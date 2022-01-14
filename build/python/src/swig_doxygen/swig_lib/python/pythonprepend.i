
%pythonprepend OpenMM::System::addParticle(double mass) %{
    if unit.is_quantity(mass):
        mass = mass.value_in_unit(unit.amu)
%}
%pythonprepend OpenMM::System::setParticleMass(int index, double mass) %{
    if unit.is_quantity(mass):
        mass = mass.value_in_unit(unit.amu)
%}
%pythonprepend OpenMM::System::setVirtualSite(int index, VirtualSite *virtualSite) %{
    if not virtualSite.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::System::addConstraint(int particle1, int particle2, double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::System::setConstraintParameters(int index, int particle1, int particle2, double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::System::addForce(Force *force) %{
    if not force.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::System::setDefaultPeriodicBoxVectors(const Vec3 &a, const Vec3 &b, const Vec3 &c) %{
    if unit.is_quantity(a):
        a = a.value_in_unit(unit.nanometer)
    if unit.is_quantity(b):
        b = b.value_in_unit(unit.nanometer)
    if unit.is_quantity(c):
        c = c.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::Integrator::setStepSize(double size) %{
    if unit.is_quantity(size):
        size = size.value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::RPMDMonteCarloBarostat::setDefaultPressure(double pressure) %{
    if unit.is_quantity(pressure):
        pressure = pressure.value_in_unit(unit.bar)
%}
%pythonprepend OpenMM::GayBerneForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::GayBerneForce::setSwitchingDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::GayBerneForce::addParticle(double sigma, double epsilon, int xparticle, int yparticle, double sx, double sy, double sz, double ex, double ey, double ez) %{
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
    if unit.is_quantity(sx):
        sx = sx.value_in_unit(unit.nanometer)
    if unit.is_quantity(sy):
        sy = sy.value_in_unit(unit.nanometer)
    if unit.is_quantity(sz):
        sz = sz.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::GayBerneForce::setParticleParameters(int index, double sigma, double epsilon, int xparticle, int yparticle, double sx, double sy, double sz, double ex, double ey, double ez) %{
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
    if unit.is_quantity(sx):
        sx = sx.value_in_unit(unit.nanometer)
    if unit.is_quantity(sy):
        sy = sy.value_in_unit(unit.nanometer)
    if unit.is_quantity(sz):
        sz = sz.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::HippoNonbondedForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::HippoNonbondedForce::setSwitchingDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::HarmonicBondForce::addBond(int particle1, int particle2, double length, double k) %{
    if unit.is_quantity(length):
        length = length.value_in_unit(unit.nanometer)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole/(unit.nanometer*unit.nanometer))
%}
%pythonprepend OpenMM::HarmonicBondForce::setBondParameters(int index, int particle1, int particle2, double length, double k) %{
    if unit.is_quantity(length):
        length = length.value_in_unit(unit.nanometer)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole/(unit.nanometer*unit.nanometer))
%}
%pythonprepend OpenMM::DrudeForce::addParticle(int particle, int particle1, int particle2, int particle3, int particle4, double charge, double polarizability, double aniso12, double aniso34) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(polarizability):
        polarizability = polarizability.value_in_unit(unit.nanometer**3)
%}
%pythonprepend OpenMM::DrudeForce::setParticleParameters(int index, int particle, int particle1, int particle2, int particle3, int particle4, double charge, double polarizability, double aniso12, double aniso34) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(polarizability):
        polarizability = polarizability.value_in_unit(unit.nanometer**3)
%}
%pythonprepend OpenMM::CustomNonbondedForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomNonbondedForce::setSwitchingDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomNonbondedForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::CustomNonbondedForce::addInteractionGroup(const std::set< int > &set1, const std::set< int > &set2) %{
    set1 = list(set1)
    set2 = list(set2)
%}
%pythonprepend OpenMM::CustomNonbondedForce::setInteractionGroupParameters(int index, const std::set< int > &set1, const std::set< int > &set2) %{
    set1 = list(set1)
    set2 = list(set2)
%}
%pythonprepend OpenMM::MonteCarloFlexibleBarostat::setDefaultPressure(double pressure) %{
    if unit.is_quantity(pressure):
        pressure = pressure.value_in_unit(unit.bar)
%}
%pythonprepend OpenMM::MonteCarloFlexibleBarostat::setDefaultTemperature(double temp) %{
    if unit.is_quantity(temp):
        temp = temp.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::addThermostat(double temperature, double collisionFrequency, int chainLength, int numMTS, int numYoshidaSuzuki) %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
    if unit.is_quantity(collisionFrequency):
        collisionFrequency = collisionFrequency.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::addSubsystemThermostat(const std::vector< int > &thermostatedParticles, const std::vector< std::pair< int, int > > &thermostatedPairs, double temperature, double collisionFrequency, double relativeTemperature, double relativeCollisionFrequency, int chainLength=3, int numMTS=3, int numYoshidaSuzuki=7) %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
    if unit.is_quantity(collisionFrequency):
        collisionFrequency = collisionFrequency.value_in_unit(unit.picosecond**-1)
    if unit.is_quantity(relativeTemperature):
        relativeTemperature = relativeTemperature.value_in_unit(unit.kelvin)
    if unit.is_quantity(relativeCollisionFrequency):
        relativeCollisionFrequency = relativeCollisionFrequency.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::setTemperature(double temperature, int chainID=0) %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::setRelativeTemperature(double temperature, int chainID=0) %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::setCollisionFrequency(double frequency, int chainID=0) %{
    if unit.is_quantity(frequency):
        frequency = frequency.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::setRelativeCollisionFrequency(double frequency, int chainID=0) %{
    if unit.is_quantity(frequency):
        frequency = frequency.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::NoseHooverIntegrator::setMaximumPairDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::NoseHooverChain::NoseHooverChain %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[2]):
        args[2] = args[2].value_in_unit(unit.picosecond**-1)
    if unit.is_quantity(args[3]):
        args[3] = args[3].value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::MonteCarloAnisotropicBarostat::MonteCarloAnisotropicBarostat %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.bar)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::MonteCarloAnisotropicBarostat::setDefaultPressure(const Vec3 &pressure) %{
    if unit.is_quantity(pressure):
        pressure = pressure.value_in_unit(unit.bar)
%}
%pythonprepend OpenMM::MonteCarloAnisotropicBarostat::setDefaultTemperature(double temp) %{
    if unit.is_quantity(temp):
        temp = temp.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::NonbondedForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::NonbondedForce::setSwitchingDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::NonbondedForce::setPMEParameters(double alpha, int nx, int ny, int nz) %{
    if unit.is_quantity(alpha):
        alpha = alpha.value_in_unit(unit.nanometer**-1)
%}
%pythonprepend OpenMM::NonbondedForce::addParticle(double charge, double sigma, double epsilon) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::NonbondedForce::setParticleParameters(int index, double charge, double sigma, double epsilon) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::NonbondedForce::addException(int particle1, int particle2, double chargeProd, double sigma, double epsilon, bool replace=false) %{
    if unit.is_quantity(chargeProd):
        chargeProd = chargeProd.value_in_unit(unit.elementary_charge*unit.elementary_charge)
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::NonbondedForce::setExceptionParameters(int index, int particle1, int particle2, double chargeProd, double sigma, double epsilon) %{
    if unit.is_quantity(chargeProd):
        chargeProd = chargeProd.value_in_unit(unit.elementary_charge*unit.elementary_charge)
    if unit.is_quantity(sigma):
        sigma = sigma.value_in_unit(unit.nanometer)
    if unit.is_quantity(epsilon):
        epsilon = epsilon.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::LangevinIntegrator::LangevinIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.picosecond**-1)
    if unit.is_quantity(args[2]):
        args[2] = args[2].value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::LangevinIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::CustomHbondForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomHbondForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::BrownianIntegrator::BrownianIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.picosecond**-1)
    if unit.is_quantity(args[2]):
        args[2] = args[2].value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::BrownianIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::CMAPTorsionForce::setMapParameters(int index, int size, const std::vector< double > &energy) %{
    if unit.is_quantity(energy):
        energy = energy.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::MonteCarloBarostat::MonteCarloBarostat %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.bar)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::MonteCarloBarostat::setDefaultPressure(double pressure) %{
    if unit.is_quantity(pressure):
        pressure = pressure.value_in_unit(unit.bar)
%}
%pythonprepend OpenMM::MonteCarloBarostat::setDefaultTemperature(double temp) %{
    if unit.is_quantity(temp):
        temp = temp.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::VerletIntegrator::VerletIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::DrudeNoseHooverIntegrator::setMaxDrudeDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::DrudeNoseHooverIntegrator::getVelocitiesForTemperature(const System &system, double temperature, int randomSeed) const override %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::AndersenThermostat::setDefaultTemperature(double temperature) %{
    if unit.is_quantity(temperature):
        temperature = temperature.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::AndersenThermostat::setDefaultCollisionFrequency(double frequency) %{
    if unit.is_quantity(frequency):
        frequency = frequency.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::Platform::registerPlatform(Platform *platform) %{
    if not platform.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::RBTorsionForce::addTorsion(int particle1, int particle2, int particle3, int particle4, double c0, double c1, double c2, double c3, double c4, double c5) %{
    if unit.is_quantity(c0):
        c0 = c0.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c1):
        c1 = c1.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c2):
        c2 = c2.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c3):
        c3 = c3.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c4):
        c4 = c4.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c5):
        c5 = c5.value_in_unit(unit.kilojoules_per_mole)
%}
%pythonprepend OpenMM::RBTorsionForce::setTorsionParameters(int index, int particle1, int particle2, int particle3, int particle4, double c0, double c1, double c2, double c3, double c4, double c5) %{
    if unit.is_quantity(c0):
        c0 = c0.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c1):
        c1 = c1.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c2):
        c2 = c2.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c3):
        c3 = c3.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c4):
        c4 = c4.value_in_unit(unit.kilojoules_per_mole)
    if unit.is_quantity(c5):
        c5 = c5.value_in_unit(unit.kilojoules_per_mole)
%}
%pythonprepend OpenMM::VariableLangevinIntegrator::VariableLangevinIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::VariableLangevinIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::VariableLangevinIntegrator::setMaximumStepSize(double size) %{
    if unit.is_quantity(size):
        size = size.value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::RPMDIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::VariableVerletIntegrator::setMaximumStepSize(double size) %{
    if unit.is_quantity(size):
        size = size.value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::Context::setTime(double time) %{
    if unit.is_quantity(time):
        time = time.value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::Context::setPositions(const std::vector< Vec3 > &positions) %{
    if unit.is_quantity(positions):
        positions = positions.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::Context::setVelocities(const std::vector< Vec3 > &velocities) %{
    if unit.is_quantity(velocities):
        velocities = velocities.value_in_unit(unit.nanometer/unit.picosecond)
%}
%pythonprepend OpenMM::Context::setPeriodicBoxVectors(const Vec3 &a, const Vec3 &b, const Vec3 &c) %{
    if unit.is_quantity(a):
        a = a.value_in_unit(unit.nanometer)
    if unit.is_quantity(b):
        b = b.value_in_unit(unit.nanometer)
    if unit.is_quantity(c):
        c = c.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::DrudeIntegrator::setDrudeTemperature(double temp) %{
    if unit.is_quantity(temp):
        temp = temp.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::DrudeIntegrator::setMaxDrudeDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::DrudeLangevinIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::DrudeLangevinIntegrator::setDrudeFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::PeriodicTorsionForce::addTorsion(int particle1, int particle2, int particle3, int particle4, int periodicity, double phase, double k) %{
    if unit.is_quantity(phase):
        phase = phase.value_in_unit(unit.radian)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::PeriodicTorsionForce::setTorsionParameters(int index, int particle1, int particle2, int particle3, int particle4, int periodicity, double phase, double k) %{
    if unit.is_quantity(phase):
        phase = phase.value_in_unit(unit.radian)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole)
%}
%pythonprepend OpenMM::DrudeSCFIntegrator::setMinimizationErrorTolerance(double tol) %{
    if unit.is_quantity(tol):
        tol = tol.value_in_unit(unit.kilojoules_per_mole/unit.nanometer)
%}
%pythonprepend OpenMM::AmoebaVdwForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::LangevinMiddleIntegrator::LangevinMiddleIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.kelvin)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.picosecond**-1)
    if unit.is_quantity(args[2]):
        args[2] = args[2].value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::LangevinMiddleIntegrator::setFriction(double coeff) %{
    if unit.is_quantity(coeff):
        coeff = coeff.value_in_unit(unit.picosecond**-1)
%}
%pythonprepend OpenMM::MonteCarloMembraneBarostat::MonteCarloMembraneBarostat %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.bar)
    if unit.is_quantity(args[1]):
        args[1] = args[1].value_in_unit(unit.bar*unit.nanometer)
    if unit.is_quantity(args[2]):
        args[2] = args[2].value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::MonteCarloMembraneBarostat::setDefaultPressure(double pressure) %{
    if unit.is_quantity(pressure):
        pressure = pressure.value_in_unit(unit.bar)
%}
%pythonprepend OpenMM::MonteCarloMembraneBarostat::setDefaultSurfaceTension(double surfaceTension) %{
    if unit.is_quantity(surfaceTension):
        surfaceTension = surfaceTension.value_in_unit(unit.bar*unit.nanometer)
%}
%pythonprepend OpenMM::MonteCarloMembraneBarostat::setDefaultTemperature(double temp) %{
    if unit.is_quantity(temp):
        temp = temp.value_in_unit(unit.kelvin)
%}
%pythonprepend OpenMM::CompoundIntegrator::addIntegrator(Integrator *integrator) %{
    if not integrator.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::CompoundIntegrator::setStepSize(double size) %{
    if unit.is_quantity(size):
        size = size.value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::CustomGBForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomGBForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::HarmonicAngleForce::addAngle(int particle1, int particle2, int particle3, double angle, double k) %{
    if unit.is_quantity(angle):
        angle = angle.value_in_unit(unit.radian)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole/(unit.radian*unit.radian))
%}
%pythonprepend OpenMM::HarmonicAngleForce::setAngleParameters(int index, int particle1, int particle2, int particle3, double angle, double k) %{
    if unit.is_quantity(angle):
        angle = angle.value_in_unit(unit.radian)
    if unit.is_quantity(k):
        k = k.value_in_unit(unit.kilojoule_per_mole/(unit.radian*unit.radian))
%}
%pythonprepend OpenMM::CustomCVForce::addCollectiveVariable(const std::string &name, Force *variable) %{
    if not variable.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::CustomCVForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::CustomIntegrator::CustomIntegrator %{
    args = list(args)
    if unit.is_quantity(args[0]):
        args[0] = args[0].value_in_unit(unit.picosecond)
%}
%pythonprepend OpenMM::CustomIntegrator::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::GBSAOBCForce::addParticle(double charge, double radius, double scalingFactor) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(radius):
        radius = radius.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::GBSAOBCForce::setParticleParameters(int index, double charge, double radius, double scalingFactor) %{
    if unit.is_quantity(charge):
        charge = charge.value_in_unit(unit.elementary_charge)
    if unit.is_quantity(radius):
        radius = radius.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::GBSAOBCForce::setSurfaceAreaEnergy(double energy) %{
    if unit.is_quantity(energy):
        energy = energy.value_in_unit(unit.kilojoule_per_mole/unit.nanometer/unit.nanometer)
%}
%pythonprepend OpenMM::GBSAOBCForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::AmoebaMultipoleForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomManyParticleForce::setCutoffDistance(double distance) %{
    if unit.is_quantity(distance):
        distance = distance.value_in_unit(unit.nanometers)
%}
%pythonprepend OpenMM::CustomManyParticleForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}
%pythonprepend OpenMM::RMSDForce::setReferencePositions(const std::vector< Vec3 > &positions) %{
    if unit.is_quantity(positions):
        positions = positions.value_in_unit(unit.nanometer)
%}
%pythonprepend OpenMM::CustomCompoundBondForce::addTabulatedFunction(const std::string &name, TabulatedFunction *function) %{
    if not function.thisown:
        s = ("the %s object does not own its corresponding OpenMM object"
             % self.__class__.__name__)
        raise Exception(s)
%}