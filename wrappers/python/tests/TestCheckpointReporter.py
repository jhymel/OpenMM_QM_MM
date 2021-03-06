import os
import unittest
import tempfile
from openmm import app
import openmm as mm
from openmm import unit


class TestCheckpointReporter(unittest.TestCase):
    def setUp(self):
        with open('systems/alanine-dipeptide-implicit.pdb') as f:
            pdb = app.PDBFile(f)
        forcefield = app.ForceField('amber99sbildn.xml')
        system = forcefield.createSystem(pdb.topology,
            nonbondedMethod=app.CutoffNonPeriodic, nonbondedCutoff=1.0*unit.nanometers,
            constraints=app.HBonds)
        self.simulation = app.Simulation(pdb.topology, system, mm.VerletIntegrator(0.002*unit.picoseconds))
        self.simulation.context.setPositions(pdb.positions)

    def test_1(self):
        """Test CheckpointReporter."""
        for writeState in [True, False]:
            with tempfile.TemporaryDirectory() as tempdir:
                filename = os.path.join(tempdir, 'checkpoint')
                self.simulation.reporters.clear()
                self.simulation.reporters.append(app.CheckpointReporter(filename, 1, writeState=writeState))
                self.simulation.step(1)
        
                # get the current positions
                positions = self.simulation.context.getState(getPositions=True).getPositions()
        
                # now set the positions into junk...
                self.simulation.context.setPositions([mm.Vec3(0, 0, 0)] * len(positions))
        
                # then reload the right positions from the checkpoint
                if writeState:
                    self.simulation.loadState(filename)
                else:
                    self.simulation.loadCheckpoint(filename)
        
                newPositions = self.simulation.context.getState(getPositions=True).getPositions()
                self.assertSequenceEqual(positions, newPositions)

if __name__ == '__main__':
    unittest.main()
