/* -------------------------------------------------------------------------- *
 *                                   OpenMM                                   *
 * -------------------------------------------------------------------------- *
 * This is part of the OpenMM molecular simulation toolkit originating from   *
 * Simbios, the NIH National Center for Physics-Based Simulation of           *
 * Biological Structures at Stanford, funded under the NIH Roadmap for        *
 * Medical Research, grant U54 GM072970. See https://simtk.org.               *
 *                                                                            *
 * Portions copyright (c) 2008-2019 Stanford University and the Authors.      *
 * Authors: Peter Eastman                                                     *
 * Contributors:                                                              *
 *                                                                            *
 * Permission is hereby granted, free of charge, to any person obtaining a    *
 * copy of this software and associated documentation files (the "Software"), *
 * to deal in the Software without restriction, including without limitation  *
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,   *
 * and/or sell copies of the Software, and to permit persons to whom the      *
 * Software is furnished to do so, subject to the following conditions:       *
 *                                                                            *
 * The above copyright notice and this permission notice shall be included in *
 * all copies or substantial portions of the Software.                        *
 *                                                                            *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR *
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   *
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    *
 * THE AUTHORS, CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,    *
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR      *
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE  *
 * USE OR OTHER DEALINGS IN THE SOFTWARE.                                     *
 * -------------------------------------------------------------------------- */

#include "ReferencePlatform.h"
#include "ReferenceKernelFactory.h"
#include "ReferenceKernels.h"
#include "openmm/internal/ContextImpl.h"
#include "openmm/OpenMMException.h"
#include "SimTKOpenMMRealType.h"
#include "openmm/Vec3.h"

using namespace OpenMM;
using namespace std;

ReferencePlatform::ReferencePlatform() {
    ReferenceKernelFactory* factory = new ReferenceKernelFactory();
    registerKernelFactory(CalcForcesAndEnergyKernel::Name(), factory);
    registerKernelFactory(UpdateStateDataKernel::Name(), factory);
    registerKernelFactory(ApplyConstraintsKernel::Name(), factory);
    registerKernelFactory(VirtualSitesKernel::Name(), factory);
    registerKernelFactory(CalcHarmonicBondForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomBondForceKernel::Name(), factory);
    registerKernelFactory(CalcHarmonicAngleForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomAngleForceKernel::Name(), factory);
    registerKernelFactory(CalcPeriodicTorsionForceKernel::Name(), factory);
    registerKernelFactory(CalcRBTorsionForceKernel::Name(), factory);
    registerKernelFactory(CalcCMAPTorsionForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomTorsionForceKernel::Name(), factory);
    registerKernelFactory(CalcNonbondedForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomNonbondedForceKernel::Name(), factory);
    registerKernelFactory(CalcGBSAOBCForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomGBForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomExternalForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomHbondForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomCentroidBondForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomCompoundBondForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomCVForceKernel::Name(), factory);
    registerKernelFactory(CalcRMSDForceKernel::Name(), factory);
    registerKernelFactory(CalcCustomManyParticleForceKernel::Name(), factory);
    registerKernelFactory(CalcGayBerneForceKernel::Name(), factory);
    registerKernelFactory(IntegrateVerletStepKernel::Name(), factory);
    registerKernelFactory(IntegrateNoseHooverStepKernel::Name(), factory);
    registerKernelFactory(IntegrateLangevinStepKernel::Name(), factory);
    registerKernelFactory(IntegrateLangevinMiddleStepKernel::Name(), factory);
    registerKernelFactory(IntegrateBrownianStepKernel::Name(), factory);
    registerKernelFactory(IntegrateVariableLangevinStepKernel::Name(), factory);
    registerKernelFactory(IntegrateVariableVerletStepKernel::Name(), factory);
    registerKernelFactory(IntegrateCustomStepKernel::Name(), factory);
    registerKernelFactory(ApplyAndersenThermostatKernel::Name(), factory);
    registerKernelFactory(ApplyMonteCarloBarostatKernel::Name(), factory);
    registerKernelFactory(RemoveCMMotionKernel::Name(), factory);
    platformProperties.push_back(ReferenceVextGrid());
    setPropertyDefaultValue(ReferenceVextGrid(), "false");
}

double ReferencePlatform::getSpeed() const {
    return 1;
}

bool ReferencePlatform::supportsDoublePrecision() const {
    return true;
}


const string& ReferencePlatform::getPropertyValue(const Context& context, const string& property) const {
    const ContextImpl& impl = getContextImpl(context);
    const PlatformData* data = reinterpret_cast<const PlatformData*>(impl.getPlatformData());
    string propertyName = property;
    if (deprecatedPropertyReplacements.find(property) != deprecatedPropertyReplacements.end())
        propertyName = deprecatedPropertyReplacements.find(property)->second;
    map<string, string>::const_iterator value = data->propertyValues.find(propertyName);
    if (value != data->propertyValues.end())
        return value->second;
    return Platform::getPropertyValue(context, property);
}



void ReferencePlatform::setPropertyValue(Context& context, const string& property, const string& value) {
    ContextImpl& impl = getContextImpl(context);
    PlatformData* data = reinterpret_cast<PlatformData*>(impl.getPlatformData());
    string propertyName = property;
    if (deprecatedPropertyReplacements.find(property) != deprecatedPropertyReplacements.end())
        propertyName = deprecatedPropertyReplacements.find(property)->second;
    for (auto& prop : platformProperties){
        if (prop == propertyName) {
            data->propertyValues[propertyName] = value;
            return;
        }
    }
    throw OpenMMException("setPropertyValue: Illegal property name");
}



void ReferencePlatform::contextCreated(ContextImpl& context, const map<string, string>& properties) const {
    // check properties to see if we are asking for VextGrid calculation ...
    string ReferenceVextGridValue = (properties.find(ReferenceVextGrid()) == properties.end() ?
            getPropertyDefaultValue(ReferenceVextGrid()) : properties.find(ReferenceVextGrid())->second);    
    transform(ReferenceVextGridValue.begin(), ReferenceVextGridValue.end(), ReferenceVextGridValue.begin(), ::tolower);
    context.setPlatformData(new PlatformData(context.getSystem(), (ReferenceVextGridValue == "true") ));
}

void ReferencePlatform::contextDestroyed(ContextImpl& context) const {
    PlatformData* data = reinterpret_cast<PlatformData*>(context.getPlatformData());
    delete data;
}

ReferencePlatform::PlatformData::PlatformData(const System& system, bool ReferenceVextGridValue ) : time(0.0), stepCount(0), numParticles(system.getNumParticles()) {
    positions = new vector<Vec3>(numParticles);
    velocities = new vector<Vec3>(numParticles);
    forces = new vector<Vec3>(numParticles);
    periodicBoxSize = new Vec3();
    periodicBoxVectors = new Vec3[3];
    constraints = new ReferenceConstraints(system);
    energyParameterDerivatives = new map<string, double>();

    propertyValues[ReferenceVextGrid()] = ReferenceVextGridValue ? "true" : "false" ;

    // If requesting VextGrid ...
    if ( ReferenceVextGridValue ){

        // need grid info to allocate vext_grid , need NonbondForce for this...
        double alpha;
        int nx, ny, nz;
        int numForces = system.getNumForces();
        for (int i=0;i<numForces;i++){
            // see if this is a NonbondedForce
            NonbondedForce* nbforce = dynamic_cast<NonbondedForce*>(const_cast<Force*>(&system.getForce(i)) );
            if( nbforce ){
                nbforce->getPMEParameters( alpha , nx , ny , nz );
            }

        }
        //Assume that we have a NonbondedForce ... might want to put a check for this in the future ...
        // Allocate vext grid storage
        vext_grid = (double *) malloc(sizeof(double)*nx*ny*nz);
        //vext_grid = new vector<double>(nx*ny*nz);  
        
       ngrid.push_back(nx); // Added by JohnH
       ngrid.push_back(ny); // Added by JohnH
       ngrid.push_back(nz); // Added by JohnH

    }
}

ReferencePlatform::PlatformData::~PlatformData() {
    delete positions;
    delete velocities;
    delete forces;
    delete periodicBoxSize;
    delete[] periodicBoxVectors;
    delete constraints;
    delete energyParameterDerivatives;
    if ( propertyValues[ReferenceVextGrid()] == "true" ){
        // Delete vext grid storage
        free(vext_grid);
        ngrid.clear();  // Added by JohnH
        //delete (vector<double>*) vext_grid;
        }
/*<<<<<<< HEAD
    delete (vector<Vec3>*) positions;
    delete (vector<Vec3>*) velocities;
    delete (vector<Vec3>*) forces;
    delete (Vec3*) periodicBoxSize;
    delete[] (Vec3*) periodicBoxVectors;
    delete (ReferenceConstraints*) constraints;
    delete (map<string, double>*) energyParameterDerivatives;
    if ( propertyValues[ReferenceVextGrid()] == "true" ){
        // Delete vext grid storage
        free(vext_grid);
        //delete (vector<double>*) vext_grid;
        delete (vector<Vec3>*) PME_grid_positions;
    }
=======
    delete positions;
    delete velocities;
    delete forces;
    delete periodicBoxSize;
    delete[] periodicBoxVectors;
    delete constraints;
    delete energyParameterDerivatives;
>>>>>>> upstream/master*/
}
