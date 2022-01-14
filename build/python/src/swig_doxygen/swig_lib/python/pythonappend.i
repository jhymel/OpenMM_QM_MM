%pythonappend OpenMM::System::getParticleMass(int index) const %{
   val=unit.Quantity(val, unit.amu)
%}

%pythonappend OpenMM::System::setVirtualSite(int index, VirtualSite * virtualSite) %{
   virtualSite.thisown=0
%}

%pythonappend OpenMM::System::getConstraintParameters(int index, int & particle1, int & particle2, double & distance) const %{
   val[2]=unit.Quantity(val[2], unit.nanometer)
%}

%pythonappend OpenMM::System::addForce(Force * force) %{
   force.thisown=0
%}

%pythonappend OpenMM::System::getDefaultPeriodicBoxVectors(Vec3 & a, Vec3 & b, Vec3 & c) const %{
   val[0]=unit.Quantity(val[0], unit.nanometer)
   val[1]=unit.Quantity(val[1], unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.nanometer)
%}

%pythonappend OpenMM::Integrator::getStepSize() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::RPMDMonteCarloBarostat::getDefaultPressure() const %{
   val=unit.Quantity(val, unit.bar)
%}

%pythonappend OpenMM::GayBerneForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::GayBerneForce::getSwitchingDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::GayBerneForce::getParticleParameters(int index, double & sigma, double & epsilon, int & xparticle, int & yparticle, double & sx, double & sy, double & sz, double & ex, double & ey, double & ez) const %{
   val[0]=unit.Quantity(val[0], unit.nanometer)
   val[1]=unit.Quantity(val[1], unit.kilojoule_per_mole)
   val[4]=unit.Quantity(val[4], unit.nanometer)
   val[5]=unit.Quantity(val[5], unit.nanometer)
   val[6]=unit.Quantity(val[6], unit.nanometer)
%}

%pythonappend OpenMM::HippoNonbondedForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::HippoNonbondedForce::getSwitchingDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::HippoNonbondedForce::getParticleParameters(int index, double & charge, std::vector< double > & dipole, std::vector< double > & quadrupole, double & coreCharge, double & alpha, double & epsilon, double & damping, double & c6, double & pauliK, double & pauliQ, double & pauliAlpha, double & polarizability, int & axisType, int & multipoleAtomZ, int & multipoleAtomX, int & multipoleAtomY) const %{
   val[0]=unit.Quantity(val[0], unit.elementary_charge)
   val[1]=unit.Quantity(val[1], unit.elementary_charge*unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.elementary_charge*unit.nanometer**2)
   val[3]=unit.Quantity(val[3], unit.elementary_charge)
%}

%pythonappend OpenMM::HarmonicBondForce::getBondParameters(int index, int & particle1, int & particle2, double & length, double & k) const %{
   val[2]=unit.Quantity(val[2], unit.nanometer)
   val[3]=unit.Quantity(val[3], unit.kilojoule_per_mole/(unit.nanometer*unit.nanometer))
%}

%pythonappend OpenMM::DrudeForce::getParticleParameters(int index, int & particle, int & particle1, int & particle2, int & particle3, int & particle4, double & charge, double & polarizability, double & aniso12, double & aniso34) const %{
   val[5]=unit.Quantity(val[5], unit.elementary_charge)
   val[6]=unit.Quantity(val[6], unit.nanometer**3)
%}

%pythonappend OpenMM::CustomNonbondedForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::CustomNonbondedForce::getSwitchingDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::CustomNonbondedForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::MonteCarloFlexibleBarostat::getDefaultPressure() const %{
   val=unit.Quantity(val, unit.bar)
%}

%pythonappend OpenMM::MonteCarloFlexibleBarostat::getDefaultTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NoseHooverIntegrator::getTemperature(int chainID=0) const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NoseHooverIntegrator::getRelativeTemperature(int chainID=0) const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NoseHooverIntegrator::getCollisionFrequency(int chainID=0) const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::NoseHooverIntegrator::getRelativeCollisionFrequency(int chainID=0) const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::NoseHooverIntegrator::computeHeatBathEnergy() %{
   val=unit.Quantity(val, unit.kilojoules_per_mole)
%}

%pythonappend OpenMM::NoseHooverIntegrator::getMaximumPairDistance() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::NoseHooverChain::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NoseHooverChain::getRelativeTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NoseHooverChain::getCollisionFrequency() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::NoseHooverChain::getRelativeCollisionFrequency() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::MonteCarloAnisotropicBarostat::getDefaultPressure() const %{
   val=unit.Quantity(val, unit.bar)
%}

%pythonappend OpenMM::MonteCarloAnisotropicBarostat::getDefaultTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::NonbondedForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::NonbondedForce::getSwitchingDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::NonbondedForce::getPMEParameters(double & alpha, int & nx, int & ny, int & nz) const %{
   val[0]=unit.Quantity(val[0], unit.nanometer**-1)
%}

%pythonappend OpenMM::NonbondedForce::getParticleParameters(int index, double & charge, double & sigma, double & epsilon) const %{
   val[0]=unit.Quantity(val[0], unit.elementary_charge)
   val[1]=unit.Quantity(val[1], unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::NonbondedForce::getExceptionParameters(int index, int & particle1, int & particle2, double & chargeProd, double & sigma, double & epsilon) const %{
   val[2]=unit.Quantity(val[2], unit.elementary_charge*unit.elementary_charge)
   val[3]=unit.Quantity(val[3], unit.nanometer)
   val[4]=unit.Quantity(val[4], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::LangevinIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::LangevinIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::CustomHbondForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::CustomHbondForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::BrownianIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::BrownianIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::CMAPTorsionForce::getMapParameters(int index, int & size, std::vector< double > & energy) const %{
   val[1]=unit.Quantity(val[1], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::MonteCarloBarostat::getDefaultPressure() const %{
   val=unit.Quantity(val, unit.bar)
%}

%pythonappend OpenMM::MonteCarloBarostat::getDefaultTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getParticleParameters(int particleIndex, double & radius, double & epsilon) const %{
   val[0]=unit.Quantity(val[0], unit.nanometer)
   val[1]=unit.Quantity(val[1], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getEpso() const %{
   val=unit.Quantity(val, unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getEpsh() const %{
   val=unit.Quantity(val, unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getRmino() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getRminh() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getAwater() const %{
   val=unit.Quantity(val, 1/(unit.nanometer*unit.nanometer*unit.nanometer))
%}

%pythonappend OpenMM::AmoebaWcaDispersionForce::getDispoff() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::DrudeNoseHooverIntegrator::getMaxDrudeDistance() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::DrudeNoseHooverIntegrator::getVelocitiesForTemperature(const System & system, double temperature, int randomSeed) const %{
   val[0]=unit.Quantity(val[0], unit.nanometers / unit.picosecond)
%}

%pythonappend OpenMM::AndersenThermostat::getDefaultTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::AndersenThermostat::getDefaultCollisionFrequency() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::Platform::registerPlatform(Platform * platform) %{
   platform.thisown=0
%}

%pythonappend OpenMM::RBTorsionForce::getTorsionParameters(int index, int & particle1, int & particle2, int & particle3, int & particle4, double & c0, double & c1, double & c2, double & c3, double & c4, double & c5) const %{
   val[4]=unit.Quantity(val[4], unit.kilojoules_per_mole)
   val[5]=unit.Quantity(val[5], unit.kilojoules_per_mole)
   val[6]=unit.Quantity(val[6], unit.kilojoules_per_mole)
   val[7]=unit.Quantity(val[7], unit.kilojoules_per_mole)
   val[8]=unit.Quantity(val[8], unit.kilojoules_per_mole)
   val[9]=unit.Quantity(val[9], unit.kilojoules_per_mole)
%}

%pythonappend OpenMM::VariableLangevinIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::VariableLangevinIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::VariableLangevinIntegrator::getMaximumStepSize() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::RPMDIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::RPMDIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::RPMDIntegrator::getTotalEnergy() %{
   val=unit.Quantity(val, unit.kilojoules_per_mole)
%}

%pythonappend OpenMM::LocalCoordinatesSite::getLocalPosition() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::VariableVerletIntegrator::getMaximumStepSize() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::Context::getTime() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::DrudeIntegrator::getDrudeTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::DrudeIntegrator::getMaxDrudeDistance() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::DrudeLangevinIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::DrudeLangevinIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::DrudeLangevinIntegrator::getDrudeFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::PeriodicTorsionForce::getTorsionParameters(int index, int & particle1, int & particle2, int & particle3, int & particle4, int & periodicity, double & phase, double & k) const %{
   val[5]=unit.Quantity(val[5], unit.radian)
   val[6]=unit.Quantity(val[6], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaGeneralizedKirkwoodForce::getParticleParameters(int index, double & charge, double & radius, double & scalingFactor) const %{
   val[0]=unit.Quantity(val[0], unit.elementary_charge)
   val[1]=unit.Quantity(val[1], unit.nanometer)
%}

%pythonappend OpenMM::AmoebaGeneralizedKirkwoodForce::getProbeRadius() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::AmoebaGeneralizedKirkwoodForce::getSurfaceAreaFactor() const %{
   val=unit.Quantity(val, unit.kilojoule_per_mole/(unit.nanometer*unit.nanometer))
%}

%pythonappend OpenMM::DrudeSCFIntegrator::getMinimizationErrorTolerance() const %{
   val=unit.Quantity(val, unit.kilojoules_per_mole/unit.nanometer)
%}

%pythonappend OpenMM::State::getTime() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::State::getKineticEnergy() const %{
   val=unit.Quantity(val, unit.kilojoules_per_mole)
%}

%pythonappend OpenMM::State::getPotentialEnergy() const %{
   val=unit.Quantity(val, unit.kilojoules_per_mole)
%}

%pythonappend OpenMM::State::getPeriodicBoxVectors(Vec3 & a, Vec3 & b, Vec3 & c) const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::State::getPeriodicBoxVolume() const %{
   val=unit.Quantity(val, unit.nanometers**3)
%}

%pythonappend OpenMM::AmoebaVdwForce::getParticleParameters(int particleIndex, int & parentIndex, double & sigma, double & epsilon, double & reductionFactor, bool & isAlchemical, int & typeIndex) const %{
   val[1]=unit.Quantity(val[1], unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaVdwForce::getParticleTypeParameters(int typeIndex, double & sigma, double & epsilon) const %{
   val[1]=unit.Quantity(val[1], unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaVdwForce::getTypePairParameters(int pairIndex, int & type1, int & type2, double & sigma, double & epsilon) const %{
   val[3]=unit.Quantity(val[3], unit.nanometer)
   val[4]=unit.Quantity(val[4], unit.kilojoule_per_mole)
%}

%pythonappend OpenMM::AmoebaVdwForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::AmoebaVdwForce::getCutoff() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::LangevinMiddleIntegrator::getTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::LangevinMiddleIntegrator::getFriction() const %{
   val=unit.Quantity(val, unit.picosecond**-1)
%}

%pythonappend OpenMM::MonteCarloMembraneBarostat::getDefaultPressure() const %{
   val=unit.Quantity(val, unit.bar)
%}

%pythonappend OpenMM::MonteCarloMembraneBarostat::getDefaultSurfaceTension() const %{
   val=unit.Quantity(val, unit.bar*unit.nanometer)
%}

%pythonappend OpenMM::MonteCarloMembraneBarostat::getDefaultTemperature() const %{
   val=unit.Quantity(val, unit.kelvin)
%}

%pythonappend OpenMM::CompoundIntegrator::addIntegrator(Integrator * integrator) %{
   integrator.thisown=0
%}

%pythonappend OpenMM::CompoundIntegrator::getStepSize() const %{
   val=unit.Quantity(val, unit.picosecond)
%}

%pythonappend OpenMM::CustomGBForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::CustomGBForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::HarmonicAngleForce::getAngleParameters(int index, int & particle1, int & particle2, int & particle3, double & angle, double & k) const %{
   val[3]=unit.Quantity(val[3], unit.radian)
   val[4]=unit.Quantity(val[4], unit.kilojoule_per_mole/(unit.radian*unit.radian))
%}

%pythonappend OpenMM::CustomCVForce::addCollectiveVariable(const std::string & name, Force * variable) %{
   variable.thisown=0
%}

%pythonappend OpenMM::CustomCVForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::CustomIntegrator::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::GBSAOBCForce::getParticleParameters(int index, double & charge, double & radius, double & scalingFactor) const %{
   val[0]=unit.Quantity(val[0], unit.elementary_charge)
   val[1]=unit.Quantity(val[1], unit.nanometer)
%}

%pythonappend OpenMM::GBSAOBCForce::getSurfaceAreaEnergy() const %{
   val=unit.Quantity(val, unit.kilojoule_per_mole/unit.nanometer/unit.nanometer)
%}

%pythonappend OpenMM::GBSAOBCForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::AmoebaMultipoleForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::AmoebaMultipoleForce::getAEwald() const %{
   val=unit.Quantity(val, 1/unit.nanometer)
%}

%pythonappend OpenMM::AmoebaMultipoleForce::getMultipoleParameters(int index, double & charge, std::vector< double > & molecularDipole, std::vector< double > & molecularQuadrupole, int & axisType, int & multipoleAtomZ, int & multipoleAtomX, int & multipoleAtomY, double & thole, double & dampingFactor, double & polarity) const %{
   val[0]=unit.Quantity(val[0], unit.elementary_charge)
   val[1]=unit.Quantity(val[1], unit.elementary_charge*unit.nanometer)
   val[2]=unit.Quantity(val[2], unit.elementary_charge*unit.nanometer**2)
   val[9]=unit.Quantity(val[9], unit.nanometer**3)
%}

%pythonappend OpenMM::CustomManyParticleForce::getCutoffDistance() const %{
   val=unit.Quantity(val, unit.nanometers)
%}

%pythonappend OpenMM::CustomManyParticleForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

%pythonappend OpenMM::RMSDForce::getReferencePositions() const %{
   val=unit.Quantity(val, unit.nanometer)
%}

%pythonappend OpenMM::CustomCompoundBondForce::addTabulatedFunction(const std::string & name, TabulatedFunction * function) %{
   function.thisown=0
%}

