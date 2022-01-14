
#include "OpenMM.h"
#include "OpenMMAmoeba.h"
#include "../../../wrappers/OpenMMCWrapper.h"
#include "AmoebaOpenMMCWrapper.h"
#include <cstring>
#include <vector>

using namespace OpenMM;
using namespace std;

/* Utilities for dealing with Fortran's blank-padded strings. */
static void copyAndPadString(char* dest, const char* source, int length) {
    bool reachedEnd = false;
    for (int i = 0; i < length; i++) {
        if (source[i] == 0)
            reachedEnd = true;
        dest[i] = (reachedEnd ? ' ' : source[i]);
    }
}

static string makeString(const char* fsrc, int length) {
    while (length && fsrc[length-1]==' ')
        --length;
    return string(fsrc, length);
}

extern "C" {


/* OpenMM::HippoNonbondedForce */
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_create_(OpenMM_HippoNonbondedForce*& result) {
    result = OpenMM_HippoNonbondedForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_CREATE(OpenMM_HippoNonbondedForce*& result) {
    result = OpenMM_HippoNonbondedForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_destroy_(OpenMM_HippoNonbondedForce*& destroy) {
    OpenMM_HippoNonbondedForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_DESTROY(OpenMM_HippoNonbondedForce*& destroy) {
    OpenMM_HippoNonbondedForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA int openmm_hippononbondedforce_getnumparticles_(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_HIPPONONBONDEDFORCE_GETNUMPARTICLES(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int openmm_hippononbondedforce_getnumexceptions_(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getNumExceptions(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_HIPPONONBONDEDFORCE_GETNUMEXCEPTIONS(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getNumExceptions(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getnonbondedmethod_(const OpenMM_HippoNonbondedForce*& target, OpenMM_HippoNonbondedForce_NonbondedMethod& result) {
    result = OpenMM_HippoNonbondedForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETNONBONDEDMETHOD(const OpenMM_HippoNonbondedForce*& target, OpenMM_HippoNonbondedForce_NonbondedMethod& result) {
    result = OpenMM_HippoNonbondedForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setnonbondedmethod_(OpenMM_HippoNonbondedForce*& target, OpenMM_HippoNonbondedForce_NonbondedMethod& method) {
    OpenMM_HippoNonbondedForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETNONBONDEDMETHOD(OpenMM_HippoNonbondedForce*& target, OpenMM_HippoNonbondedForce_NonbondedMethod& method) {
    OpenMM_HippoNonbondedForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA double openmm_hippononbondedforce_getcutoffdistance_(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_HIPPONONBONDEDFORCE_GETCUTOFFDISTANCE(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setcutoffdistance_(OpenMM_HippoNonbondedForce*& target, double const& distance) {
    OpenMM_HippoNonbondedForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETCUTOFFDISTANCE(OpenMM_HippoNonbondedForce*& target, double const& distance) {
    OpenMM_HippoNonbondedForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA double openmm_hippononbondedforce_getswitchingdistance_(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getSwitchingDistance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_HIPPONONBONDEDFORCE_GETSWITCHINGDISTANCE(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getSwitchingDistance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setswitchingdistance_(OpenMM_HippoNonbondedForce*& target, double const& distance) {
    OpenMM_HippoNonbondedForce_setSwitchingDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETSWITCHINGDISTANCE(OpenMM_HippoNonbondedForce*& target, double const& distance) {
    OpenMM_HippoNonbondedForce_setSwitchingDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getextrapolationcoefficients_(const OpenMM_HippoNonbondedForce*& target, const OpenMM_DoubleArray*& result) {
    result = OpenMM_HippoNonbondedForce_getExtrapolationCoefficients(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETEXTRAPOLATIONCOEFFICIENTS(const OpenMM_HippoNonbondedForce*& target, const OpenMM_DoubleArray*& result) {
    result = OpenMM_HippoNonbondedForce_getExtrapolationCoefficients(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setextrapolationcoefficients_(OpenMM_HippoNonbondedForce*& target, const OpenMM_DoubleArray*& coefficients) {
    OpenMM_HippoNonbondedForce_setExtrapolationCoefficients(target, coefficients);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETEXTRAPOLATIONCOEFFICIENTS(OpenMM_HippoNonbondedForce*& target, const OpenMM_DoubleArray*& coefficients) {
    OpenMM_HippoNonbondedForce_setExtrapolationCoefficients(target, coefficients);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getpmeparameters_(const OpenMM_HippoNonbondedForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETPMEPARAMETERS(const OpenMM_HippoNonbondedForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getdpmeparameters_(const OpenMM_HippoNonbondedForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getDPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETDPMEPARAMETERS(const OpenMM_HippoNonbondedForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getDPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setpmeparameters_(OpenMM_HippoNonbondedForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_HippoNonbondedForce_setPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETPMEPARAMETERS(OpenMM_HippoNonbondedForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_HippoNonbondedForce_setPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setdpmeparameters_(OpenMM_HippoNonbondedForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_HippoNonbondedForce_setDPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETDPMEPARAMETERS(OpenMM_HippoNonbondedForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_HippoNonbondedForce_setDPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getpmeparametersincontext_(const OpenMM_HippoNonbondedForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETPMEPARAMETERSINCONTEXT(const OpenMM_HippoNonbondedForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getdpmeparametersincontext_(const OpenMM_HippoNonbondedForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getDPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETDPMEPARAMETERSINCONTEXT(const OpenMM_HippoNonbondedForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_HippoNonbondedForce_getDPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA int openmm_hippononbondedforce_addparticle_(OpenMM_HippoNonbondedForce*& target, double const& charge, const OpenMM_DoubleArray*& dipole, const OpenMM_DoubleArray*& quadrupole, double const& coreCharge, double const& alpha, double const& epsilon, double const& damping, double const& c6, double const& pauliK, double const& pauliQ, double const& pauliAlpha, double const& polarizability, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY) {
    return OpenMM_HippoNonbondedForce_addParticle(target, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA int OPENMM_HIPPONONBONDEDFORCE_ADDPARTICLE(OpenMM_HippoNonbondedForce*& target, double const& charge, const OpenMM_DoubleArray*& dipole, const OpenMM_DoubleArray*& quadrupole, double const& coreCharge, double const& alpha, double const& epsilon, double const& damping, double const& c6, double const& pauliK, double const& pauliQ, double const& pauliAlpha, double const& polarizability, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY) {
    return OpenMM_HippoNonbondedForce_addParticle(target, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getparticleparameters_(const OpenMM_HippoNonbondedForce*& target, int const& index, double* charge, OpenMM_DoubleArray*& dipole, OpenMM_DoubleArray*& quadrupole, double* coreCharge, double* alpha, double* epsilon, double* damping, double* c6, double* pauliK, double* pauliQ, double* pauliAlpha, double* polarizability, int* axisType, int* multipoleAtomZ, int* multipoleAtomX, int* multipoleAtomY) {
    OpenMM_HippoNonbondedForce_getParticleParameters(target, index, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETPARTICLEPARAMETERS(const OpenMM_HippoNonbondedForce*& target, int const& index, double* charge, OpenMM_DoubleArray*& dipole, OpenMM_DoubleArray*& quadrupole, double* coreCharge, double* alpha, double* epsilon, double* damping, double* c6, double* pauliK, double* pauliQ, double* pauliAlpha, double* polarizability, int* axisType, int* multipoleAtomZ, int* multipoleAtomX, int* multipoleAtomY) {
    OpenMM_HippoNonbondedForce_getParticleParameters(target, index, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setparticleparameters_(OpenMM_HippoNonbondedForce*& target, int const& index, double const& charge, const OpenMM_DoubleArray*& dipole, const OpenMM_DoubleArray*& quadrupole, double const& coreCharge, double const& alpha, double const& epsilon, double const& damping, double const& c6, double const& pauliK, double const& pauliQ, double const& pauliAlpha, double const& polarizability, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY) {
    OpenMM_HippoNonbondedForce_setParticleParameters(target, index, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETPARTICLEPARAMETERS(OpenMM_HippoNonbondedForce*& target, int const& index, double const& charge, const OpenMM_DoubleArray*& dipole, const OpenMM_DoubleArray*& quadrupole, double const& coreCharge, double const& alpha, double const& epsilon, double const& damping, double const& c6, double const& pauliK, double const& pauliQ, double const& pauliAlpha, double const& polarizability, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY) {
    OpenMM_HippoNonbondedForce_setParticleParameters(target, index, charge, dipole, quadrupole, coreCharge, alpha, epsilon, damping, c6, pauliK, pauliQ, pauliAlpha, polarizability, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY);
}
OPENMM_EXPORT_AMOEBA int openmm_hippononbondedforce_addexception_(OpenMM_HippoNonbondedForce*& target, int const& particle1, int const& particle2, double const& multipoleMultipoleScale, double const& dipoleMultipoleScale, double const& dipoleDipoleScale, double const& dispersionScale, double const& repulsionScale, double const& chargeTransferScale, OpenMM_Boolean& replace) {
    return OpenMM_HippoNonbondedForce_addException(target, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale, replace);
}
OPENMM_EXPORT_AMOEBA int OPENMM_HIPPONONBONDEDFORCE_ADDEXCEPTION(OpenMM_HippoNonbondedForce*& target, int const& particle1, int const& particle2, double const& multipoleMultipoleScale, double const& dipoleMultipoleScale, double const& dipoleDipoleScale, double const& dispersionScale, double const& repulsionScale, double const& chargeTransferScale, OpenMM_Boolean& replace) {
    return OpenMM_HippoNonbondedForce_addException(target, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale, replace);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getexceptionparameters_(const OpenMM_HippoNonbondedForce*& target, int const& index, int* particle1, int* particle2, double* multipoleMultipoleScale, double* dipoleMultipoleScale, double* dipoleDipoleScale, double* dispersionScale, double* repulsionScale, double* chargeTransferScale) {
    OpenMM_HippoNonbondedForce_getExceptionParameters(target, index, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETEXCEPTIONPARAMETERS(const OpenMM_HippoNonbondedForce*& target, int const& index, int* particle1, int* particle2, double* multipoleMultipoleScale, double* dipoleMultipoleScale, double* dipoleDipoleScale, double* dispersionScale, double* repulsionScale, double* chargeTransferScale) {
    OpenMM_HippoNonbondedForce_getExceptionParameters(target, index, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setexceptionparameters_(OpenMM_HippoNonbondedForce*& target, int const& index, int const& particle1, int const& particle2, double const& multipoleMultipoleScale, double const& dipoleMultipoleScale, double const& dipoleDipoleScale, double const& dispersionScale, double const& repulsionScale, double const& chargeTransferScale) {
    OpenMM_HippoNonbondedForce_setExceptionParameters(target, index, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETEXCEPTIONPARAMETERS(OpenMM_HippoNonbondedForce*& target, int const& index, int const& particle1, int const& particle2, double const& multipoleMultipoleScale, double const& dipoleMultipoleScale, double const& dipoleDipoleScale, double const& dispersionScale, double const& repulsionScale, double const& chargeTransferScale) {
    OpenMM_HippoNonbondedForce_setExceptionParameters(target, index, particle1, particle2, multipoleMultipoleScale, dipoleMultipoleScale, dipoleDipoleScale, dispersionScale, repulsionScale, chargeTransferScale);
}
OPENMM_EXPORT_AMOEBA double openmm_hippononbondedforce_getewalderrortolerance_(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getEwaldErrorTolerance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_HIPPONONBONDEDFORCE_GETEWALDERRORTOLERANCE(const OpenMM_HippoNonbondedForce*& target) {
    return OpenMM_HippoNonbondedForce_getEwaldErrorTolerance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_setewalderrortolerance_(OpenMM_HippoNonbondedForce*& target, double const& tol) {
    OpenMM_HippoNonbondedForce_setEwaldErrorTolerance(target, tol);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_SETEWALDERRORTOLERANCE(OpenMM_HippoNonbondedForce*& target, double const& tol) {
    OpenMM_HippoNonbondedForce_setEwaldErrorTolerance(target, tol);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getlabframepermanentdipoles_(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_HippoNonbondedForce_getLabFramePermanentDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETLABFRAMEPERMANENTDIPOLES(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_HippoNonbondedForce_getLabFramePermanentDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_getinduceddipoles_(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_HippoNonbondedForce_getInducedDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_GETINDUCEDDIPOLES(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_HippoNonbondedForce_getInducedDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_updateparametersincontext_(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context) {
    OpenMM_HippoNonbondedForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_UPDATEPARAMETERSINCONTEXT(OpenMM_HippoNonbondedForce*& target, OpenMM_Context*& context) {
    OpenMM_HippoNonbondedForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void openmm_hippononbondedforce_usesperiodicboundaryconditions_(const OpenMM_HippoNonbondedForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_HippoNonbondedForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_HIPPONONBONDEDFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_HippoNonbondedForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_HippoNonbondedForce_usesPeriodicBoundaryConditions(target);
}

/* OpenMM::AmoebaWcaDispersionForce */
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_create_(OpenMM_AmoebaWcaDispersionForce*& result) {
    result = OpenMM_AmoebaWcaDispersionForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_CREATE(OpenMM_AmoebaWcaDispersionForce*& result) {
    result = OpenMM_AmoebaWcaDispersionForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_destroy_(OpenMM_AmoebaWcaDispersionForce*& destroy) {
    OpenMM_AmoebaWcaDispersionForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_DESTROY(OpenMM_AmoebaWcaDispersionForce*& destroy) {
    OpenMM_AmoebaWcaDispersionForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA int openmm_amoebawcadispersionforce_getnumparticles_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAWCADISPERSIONFORCE_GETNUMPARTICLES(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setparticleparameters_(OpenMM_AmoebaWcaDispersionForce*& target, int const& particleIndex, double const& radius, double const& epsilon) {
    OpenMM_AmoebaWcaDispersionForce_setParticleParameters(target, particleIndex, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETPARTICLEPARAMETERS(OpenMM_AmoebaWcaDispersionForce*& target, int const& particleIndex, double const& radius, double const& epsilon) {
    OpenMM_AmoebaWcaDispersionForce_setParticleParameters(target, particleIndex, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_getparticleparameters_(const OpenMM_AmoebaWcaDispersionForce*& target, int const& particleIndex, double* radius, double* epsilon) {
    OpenMM_AmoebaWcaDispersionForce_getParticleParameters(target, particleIndex, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_GETPARTICLEPARAMETERS(const OpenMM_AmoebaWcaDispersionForce*& target, int const& particleIndex, double* radius, double* epsilon) {
    OpenMM_AmoebaWcaDispersionForce_getParticleParameters(target, particleIndex, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebawcadispersionforce_addparticle_(OpenMM_AmoebaWcaDispersionForce*& target, double const& radius, double const& epsilon) {
    return OpenMM_AmoebaWcaDispersionForce_addParticle(target, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAWCADISPERSIONFORCE_ADDPARTICLE(OpenMM_AmoebaWcaDispersionForce*& target, double const& radius, double const& epsilon) {
    return OpenMM_AmoebaWcaDispersionForce_addParticle(target, radius, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_updateparametersincontext_(OpenMM_AmoebaWcaDispersionForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaWcaDispersionForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_UPDATEPARAMETERSINCONTEXT(OpenMM_AmoebaWcaDispersionForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaWcaDispersionForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getepso_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getEpso(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETEPSO(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getEpso(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getepsh_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getEpsh(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETEPSH(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getEpsh(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getrmino_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getRmino(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETRMINO(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getRmino(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getrminh_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getRminh(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETRMINH(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getRminh(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getawater_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getAwater(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETAWATER(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getAwater(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getshctd_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getShctd(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETSHCTD(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getShctd(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getdispoff_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getDispoff(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETDISPOFF(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getDispoff(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebawcadispersionforce_getslevy_(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getSlevy(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAWCADISPERSIONFORCE_GETSLEVY(const OpenMM_AmoebaWcaDispersionForce*& target) {
    return OpenMM_AmoebaWcaDispersionForce_getSlevy(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setepso_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setEpso(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETEPSO(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setEpso(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setepsh_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setEpsh(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETEPSH(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setEpsh(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setrmino_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setRmino(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETRMINO(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setRmino(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setrminh_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setRminh(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETRMINH(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setRminh(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setawater_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setAwater(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETAWATER(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setAwater(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setshctd_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setShctd(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETSHCTD(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setShctd(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setdispoff_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setDispoff(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETDISPOFF(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setDispoff(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_setslevy_(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setSlevy(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_SETSLEVY(OpenMM_AmoebaWcaDispersionForce*& target, double const& inputValue) {
    OpenMM_AmoebaWcaDispersionForce_setSlevy(target, inputValue);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebawcadispersionforce_usesperiodicboundaryconditions_(const OpenMM_AmoebaWcaDispersionForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaWcaDispersionForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAWCADISPERSIONFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_AmoebaWcaDispersionForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaWcaDispersionForce_usesPeriodicBoundaryConditions(target);
}

/* OpenMM::AmoebaGeneralizedKirkwoodForce */
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_create_(OpenMM_AmoebaGeneralizedKirkwoodForce*& result) {
    result = OpenMM_AmoebaGeneralizedKirkwoodForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_CREATE(OpenMM_AmoebaGeneralizedKirkwoodForce*& result) {
    result = OpenMM_AmoebaGeneralizedKirkwoodForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_destroy_(OpenMM_AmoebaGeneralizedKirkwoodForce*& destroy) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_DESTROY(OpenMM_AmoebaGeneralizedKirkwoodForce*& destroy) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA int openmm_amoebageneralizedkirkwoodforce_getnumparticles_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETNUMPARTICLES(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebageneralizedkirkwoodforce_addparticle_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& charge, double const& radius, double const& scalingFactor) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_addParticle(target, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_ADDPARTICLE(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& charge, double const& radius, double const& scalingFactor) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_addParticle(target, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_getparticleparameters_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& index, double* charge, double* radius, double* scalingFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_getParticleParameters(target, index, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETPARTICLEPARAMETERS(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& index, double* charge, double* radius, double* scalingFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_getParticleParameters(target, index, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setparticleparameters_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& index, double const& charge, double const& radius, double const& scalingFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setParticleParameters(target, index, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETPARTICLEPARAMETERS(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& index, double const& charge, double const& radius, double const& scalingFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setParticleParameters(target, index, charge, radius, scalingFactor);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebageneralizedkirkwoodforce_getsolventdielectric_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSolventDielectric(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETSOLVENTDIELECTRIC(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSolventDielectric(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setsolventdielectric_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& dielectric) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSolventDielectric(target, dielectric);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETSOLVENTDIELECTRIC(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& dielectric) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSolventDielectric(target, dielectric);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebageneralizedkirkwoodforce_getsolutedielectric_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSoluteDielectric(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETSOLUTEDIELECTRIC(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSoluteDielectric(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setsolutedielectric_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& dielectric) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSoluteDielectric(target, dielectric);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETSOLUTEDIELECTRIC(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& dielectric) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSoluteDielectric(target, dielectric);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebageneralizedkirkwoodforce_getincludecavityterm_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getIncludeCavityTerm(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETINCLUDECAVITYTERM(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getIncludeCavityTerm(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setincludecavityterm_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& includeCavityTerm) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setIncludeCavityTerm(target, includeCavityTerm);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETINCLUDECAVITYTERM(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, int const& includeCavityTerm) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setIncludeCavityTerm(target, includeCavityTerm);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebageneralizedkirkwoodforce_getproberadius_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getProbeRadius(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETPROBERADIUS(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getProbeRadius(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setproberadius_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& probeRadius) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setProbeRadius(target, probeRadius);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETPROBERADIUS(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& probeRadius) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setProbeRadius(target, probeRadius);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebageneralizedkirkwoodforce_getsurfaceareafactor_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSurfaceAreaFactor(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_GETSURFACEAREAFACTOR(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target) {
    return OpenMM_AmoebaGeneralizedKirkwoodForce_getSurfaceAreaFactor(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_setsurfaceareafactor_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& surfaceAreaFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSurfaceAreaFactor(target, surfaceAreaFactor);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_SETSURFACEAREAFACTOR(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, double const& surfaceAreaFactor) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_setSurfaceAreaFactor(target, surfaceAreaFactor);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_updateparametersincontext_(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_UPDATEPARAMETERSINCONTEXT(OpenMM_AmoebaGeneralizedKirkwoodForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaGeneralizedKirkwoodForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebageneralizedkirkwoodforce_usesperiodicboundaryconditions_(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaGeneralizedKirkwoodForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAGENERALIZEDKIRKWOODFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_AmoebaGeneralizedKirkwoodForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaGeneralizedKirkwoodForce_usesPeriodicBoundaryConditions(target);
}

/* OpenMM::AmoebaVdwForce */
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_create_(OpenMM_AmoebaVdwForce*& result) {
    result = OpenMM_AmoebaVdwForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_CREATE(OpenMM_AmoebaVdwForce*& result) {
    result = OpenMM_AmoebaVdwForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_destroy_(OpenMM_AmoebaVdwForce*& destroy) {
    OpenMM_AmoebaVdwForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_DESTROY(OpenMM_AmoebaVdwForce*& destroy) {
    OpenMM_AmoebaVdwForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_lambda_(char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_Lambda();
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_LAMBDA(char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_Lambda();
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_getnumparticles_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_GETNUMPARTICLES(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumParticles(target);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_getnumparticletypes_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumParticleTypes(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_GETNUMPARTICLETYPES(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumParticleTypes(target);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_getnumtypepairs_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumTypePairs(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_GETNUMTYPEPAIRS(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getNumTypePairs(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setparticleparameters_(OpenMM_AmoebaVdwForce*& target, int const& particleIndex, int const& parentIndex, double const& sigma, double const& epsilon, double const& reductionFactor, OpenMM_Boolean& isAlchemical, int const& typeIndex) {
    OpenMM_AmoebaVdwForce_setParticleParameters(target, particleIndex, parentIndex, sigma, epsilon, reductionFactor, isAlchemical, typeIndex);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETPARTICLEPARAMETERS(OpenMM_AmoebaVdwForce*& target, int const& particleIndex, int const& parentIndex, double const& sigma, double const& epsilon, double const& reductionFactor, OpenMM_Boolean& isAlchemical, int const& typeIndex) {
    OpenMM_AmoebaVdwForce_setParticleParameters(target, particleIndex, parentIndex, sigma, epsilon, reductionFactor, isAlchemical, typeIndex);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getparticleparameters_(const OpenMM_AmoebaVdwForce*& target, int const& particleIndex, int* parentIndex, double* sigma, double* epsilon, double* reductionFactor, OpenMM_Boolean*& isAlchemical, int* typeIndex) {
    OpenMM_AmoebaVdwForce_getParticleParameters(target, particleIndex, parentIndex, sigma, epsilon, reductionFactor, isAlchemical, typeIndex);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETPARTICLEPARAMETERS(const OpenMM_AmoebaVdwForce*& target, int const& particleIndex, int* parentIndex, double* sigma, double* epsilon, double* reductionFactor, OpenMM_Boolean*& isAlchemical, int* typeIndex) {
    OpenMM_AmoebaVdwForce_getParticleParameters(target, particleIndex, parentIndex, sigma, epsilon, reductionFactor, isAlchemical, typeIndex);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_addparticle_(OpenMM_AmoebaVdwForce*& target, int const& parentIndex, double const& sigma, double const& epsilon, double const& reductionFactor, OpenMM_Boolean& isAlchemical) {
    return OpenMM_AmoebaVdwForce_addParticle(target, parentIndex, sigma, epsilon, reductionFactor, isAlchemical);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_ADDPARTICLE(OpenMM_AmoebaVdwForce*& target, int const& parentIndex, double const& sigma, double const& epsilon, double const& reductionFactor, OpenMM_Boolean& isAlchemical) {
    return OpenMM_AmoebaVdwForce_addParticle(target, parentIndex, sigma, epsilon, reductionFactor, isAlchemical);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_addparticle_1_(OpenMM_AmoebaVdwForce*& target, int const& parentIndex, int const& typeIndex, double const& reductionFactor, OpenMM_Boolean& isAlchemical) {
    return OpenMM_AmoebaVdwForce_addParticle_1(target, parentIndex, typeIndex, reductionFactor, isAlchemical);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_ADDPARTICLE_1(OpenMM_AmoebaVdwForce*& target, int const& parentIndex, int const& typeIndex, double const& reductionFactor, OpenMM_Boolean& isAlchemical) {
    return OpenMM_AmoebaVdwForce_addParticle_1(target, parentIndex, typeIndex, reductionFactor, isAlchemical);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_addparticletype_(OpenMM_AmoebaVdwForce*& target, double const& sigma, double const& epsilon) {
    return OpenMM_AmoebaVdwForce_addParticleType(target, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_ADDPARTICLETYPE(OpenMM_AmoebaVdwForce*& target, double const& sigma, double const& epsilon) {
    return OpenMM_AmoebaVdwForce_addParticleType(target, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getparticletypeparameters_(const OpenMM_AmoebaVdwForce*& target, int const& typeIndex, double* sigma, double* epsilon) {
    OpenMM_AmoebaVdwForce_getParticleTypeParameters(target, typeIndex, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETPARTICLETYPEPARAMETERS(const OpenMM_AmoebaVdwForce*& target, int const& typeIndex, double* sigma, double* epsilon) {
    OpenMM_AmoebaVdwForce_getParticleTypeParameters(target, typeIndex, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setparticletypeparameters_(OpenMM_AmoebaVdwForce*& target, int const& typeIndex, double const& sigma, double const& epsilon) {
    OpenMM_AmoebaVdwForce_setParticleTypeParameters(target, typeIndex, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETPARTICLETYPEPARAMETERS(OpenMM_AmoebaVdwForce*& target, int const& typeIndex, double const& sigma, double const& epsilon) {
    OpenMM_AmoebaVdwForce_setParticleTypeParameters(target, typeIndex, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_addtypepair_(OpenMM_AmoebaVdwForce*& target, int const& type1, int const& type2, double const& sigma, double const& epsilon) {
    return OpenMM_AmoebaVdwForce_addTypePair(target, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_ADDTYPEPAIR(OpenMM_AmoebaVdwForce*& target, int const& type1, int const& type2, double const& sigma, double const& epsilon) {
    return OpenMM_AmoebaVdwForce_addTypePair(target, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_gettypepairparameters_(const OpenMM_AmoebaVdwForce*& target, int const& pairIndex, int* type1, int* type2, double* sigma, double* epsilon) {
    OpenMM_AmoebaVdwForce_getTypePairParameters(target, pairIndex, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETTYPEPAIRPARAMETERS(const OpenMM_AmoebaVdwForce*& target, int const& pairIndex, int* type1, int* type2, double* sigma, double* epsilon) {
    OpenMM_AmoebaVdwForce_getTypePairParameters(target, pairIndex, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_settypepairparameters_(OpenMM_AmoebaVdwForce*& target, int const& pairIndex, int const& type1, int const& type2, double const& sigma, double const& epsilon) {
    OpenMM_AmoebaVdwForce_setTypePairParameters(target, pairIndex, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETTYPEPAIRPARAMETERS(OpenMM_AmoebaVdwForce*& target, int const& pairIndex, int const& type1, int const& type2, double const& sigma, double const& epsilon) {
    OpenMM_AmoebaVdwForce_setTypePairParameters(target, pairIndex, type1, type2, sigma, epsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setsigmacombiningrule_(OpenMM_AmoebaVdwForce*& target, const char* sigmaCombiningRule, int sigmaCombiningRule_length) {
    OpenMM_AmoebaVdwForce_setSigmaCombiningRule(target, makeString(sigmaCombiningRule, sigmaCombiningRule_length).c_str());
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETSIGMACOMBININGRULE(OpenMM_AmoebaVdwForce*& target, const char* sigmaCombiningRule, int sigmaCombiningRule_length) {
    OpenMM_AmoebaVdwForce_setSigmaCombiningRule(target, makeString(sigmaCombiningRule, sigmaCombiningRule_length).c_str());
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getsigmacombiningrule_(const OpenMM_AmoebaVdwForce*& target, char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_getSigmaCombiningRule(target);
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETSIGMACOMBININGRULE(const OpenMM_AmoebaVdwForce*& target, char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_getSigmaCombiningRule(target);
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setepsiloncombiningrule_(OpenMM_AmoebaVdwForce*& target, const char* epsilonCombiningRule, int epsilonCombiningRule_length) {
    OpenMM_AmoebaVdwForce_setEpsilonCombiningRule(target, makeString(epsilonCombiningRule, epsilonCombiningRule_length).c_str());
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETEPSILONCOMBININGRULE(OpenMM_AmoebaVdwForce*& target, const char* epsilonCombiningRule, int epsilonCombiningRule_length) {
    OpenMM_AmoebaVdwForce_setEpsilonCombiningRule(target, makeString(epsilonCombiningRule, epsilonCombiningRule_length).c_str());
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getepsiloncombiningrule_(const OpenMM_AmoebaVdwForce*& target, char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_getEpsilonCombiningRule(target);
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETEPSILONCOMBININGRULE(const OpenMM_AmoebaVdwForce*& target, char* result, int result_length) {
    const char* result_chars = OpenMM_AmoebaVdwForce_getEpsilonCombiningRule(target);
    copyAndPadString(result, result_chars, result_length);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getusedispersioncorrection_(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_getUseDispersionCorrection(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETUSEDISPERSIONCORRECTION(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_getUseDispersionCorrection(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setusedispersioncorrection_(OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& useCorrection) {
    OpenMM_AmoebaVdwForce_setUseDispersionCorrection(target, useCorrection);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETUSEDISPERSIONCORRECTION(OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& useCorrection) {
    OpenMM_AmoebaVdwForce_setUseDispersionCorrection(target, useCorrection);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getuseparticletypes_(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_getUseParticleTypes(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETUSEPARTICLETYPES(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_getUseParticleTypes(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setparticleexclusions_(OpenMM_AmoebaVdwForce*& target, int const& particleIndex, const OpenMM_IntArray*& exclusions) {
    OpenMM_AmoebaVdwForce_setParticleExclusions(target, particleIndex, exclusions);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETPARTICLEEXCLUSIONS(OpenMM_AmoebaVdwForce*& target, int const& particleIndex, const OpenMM_IntArray*& exclusions) {
    OpenMM_AmoebaVdwForce_setParticleExclusions(target, particleIndex, exclusions);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getparticleexclusions_(const OpenMM_AmoebaVdwForce*& target, int const& particleIndex, OpenMM_IntArray*& exclusions) {
    OpenMM_AmoebaVdwForce_getParticleExclusions(target, particleIndex, exclusions);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETPARTICLEEXCLUSIONS(const OpenMM_AmoebaVdwForce*& target, int const& particleIndex, OpenMM_IntArray*& exclusions) {
    OpenMM_AmoebaVdwForce_getParticleExclusions(target, particleIndex, exclusions);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebavdwforce_getcutoffdistance_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAVDWFORCE_GETCUTOFFDISTANCE(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setcutoffdistance_(OpenMM_AmoebaVdwForce*& target, double const& distance) {
    OpenMM_AmoebaVdwForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETCUTOFFDISTANCE(OpenMM_AmoebaVdwForce*& target, double const& distance) {
    OpenMM_AmoebaVdwForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setcutoff_(OpenMM_AmoebaVdwForce*& target, double const& cutoff) {
    OpenMM_AmoebaVdwForce_setCutoff(target, cutoff);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETCUTOFF(OpenMM_AmoebaVdwForce*& target, double const& cutoff) {
    OpenMM_AmoebaVdwForce_setCutoff(target, cutoff);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebavdwforce_getcutoff_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getCutoff(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAVDWFORCE_GETCUTOFF(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getCutoff(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getnonbondedmethod_(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_NonbondedMethod& result) {
    result = OpenMM_AmoebaVdwForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETNONBONDEDMETHOD(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_NonbondedMethod& result) {
    result = OpenMM_AmoebaVdwForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setnonbondedmethod_(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_NonbondedMethod& method) {
    OpenMM_AmoebaVdwForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETNONBONDEDMETHOD(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_NonbondedMethod& method) {
    OpenMM_AmoebaVdwForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getpotentialfunction_(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_PotentialFunction& result) {
    result = OpenMM_AmoebaVdwForce_getPotentialFunction(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETPOTENTIALFUNCTION(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_PotentialFunction& result) {
    result = OpenMM_AmoebaVdwForce_getPotentialFunction(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setpotentialfunction_(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_PotentialFunction& potential) {
    OpenMM_AmoebaVdwForce_setPotentialFunction(target, potential);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETPOTENTIALFUNCTION(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_PotentialFunction& potential) {
    OpenMM_AmoebaVdwForce_setPotentialFunction(target, potential);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setsoftcorepower_(OpenMM_AmoebaVdwForce*& target, int const& n) {
    OpenMM_AmoebaVdwForce_setSoftcorePower(target, n);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETSOFTCOREPOWER(OpenMM_AmoebaVdwForce*& target, int const& n) {
    OpenMM_AmoebaVdwForce_setSoftcorePower(target, n);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebavdwforce_getsoftcorepower_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getSoftcorePower(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAVDWFORCE_GETSOFTCOREPOWER(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getSoftcorePower(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setsoftcorealpha_(OpenMM_AmoebaVdwForce*& target, double const& alpha) {
    OpenMM_AmoebaVdwForce_setSoftcoreAlpha(target, alpha);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETSOFTCOREALPHA(OpenMM_AmoebaVdwForce*& target, double const& alpha) {
    OpenMM_AmoebaVdwForce_setSoftcoreAlpha(target, alpha);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebavdwforce_getsoftcorealpha_(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getSoftcoreAlpha(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAVDWFORCE_GETSOFTCOREALPHA(const OpenMM_AmoebaVdwForce*& target) {
    return OpenMM_AmoebaVdwForce_getSoftcoreAlpha(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_getalchemicalmethod_(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_AlchemicalMethod& result) {
    result = OpenMM_AmoebaVdwForce_getAlchemicalMethod(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_GETALCHEMICALMETHOD(const OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_AlchemicalMethod& result) {
    result = OpenMM_AmoebaVdwForce_getAlchemicalMethod(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_setalchemicalmethod_(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_AlchemicalMethod& method) {
    OpenMM_AmoebaVdwForce_setAlchemicalMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_SETALCHEMICALMETHOD(OpenMM_AmoebaVdwForce*& target, OpenMM_AmoebaVdwForce_AlchemicalMethod& method) {
    OpenMM_AmoebaVdwForce_setAlchemicalMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_updateparametersincontext_(OpenMM_AmoebaVdwForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaVdwForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_UPDATEPARAMETERSINCONTEXT(OpenMM_AmoebaVdwForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaVdwForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebavdwforce_usesperiodicboundaryconditions_(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAVDWFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_AmoebaVdwForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaVdwForce_usesPeriodicBoundaryConditions(target);
}

/* OpenMM::AmoebaTorsionTorsionForce */
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_create_(OpenMM_AmoebaTorsionTorsionForce*& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_CREATE(OpenMM_AmoebaTorsionTorsionForce*& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_destroy_(OpenMM_AmoebaTorsionTorsionForce*& destroy) {
    OpenMM_AmoebaTorsionTorsionForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_DESTROY(OpenMM_AmoebaTorsionTorsionForce*& destroy) {
    OpenMM_AmoebaTorsionTorsionForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA int openmm_amoebatorsiontorsionforce_getnumtorsiontorsions_(const OpenMM_AmoebaTorsionTorsionForce*& target) {
    return OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsions(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBATORSIONTORSIONFORCE_GETNUMTORSIONTORSIONS(const OpenMM_AmoebaTorsionTorsionForce*& target) {
    return OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsions(target);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebatorsiontorsionforce_getnumtorsiontorsiongrids_(const OpenMM_AmoebaTorsionTorsionForce*& target) {
    return OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsionGrids(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBATORSIONTORSIONFORCE_GETNUMTORSIONTORSIONGRIDS(const OpenMM_AmoebaTorsionTorsionForce*& target) {
    return OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsionGrids(target);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebatorsiontorsionforce_addtorsiontorsion_(OpenMM_AmoebaTorsionTorsionForce*& target, int const& particle1, int const& particle2, int const& particle3, int const& particle4, int const& particle5, int const& chiralCheckAtomIndex, int const& gridIndex) {
    return OpenMM_AmoebaTorsionTorsionForce_addTorsionTorsion(target, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBATORSIONTORSIONFORCE_ADDTORSIONTORSION(OpenMM_AmoebaTorsionTorsionForce*& target, int const& particle1, int const& particle2, int const& particle3, int const& particle4, int const& particle5, int const& chiralCheckAtomIndex, int const& gridIndex) {
    return OpenMM_AmoebaTorsionTorsionForce_addTorsionTorsion(target, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_gettorsiontorsionparameters_(const OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, int* particle1, int* particle2, int* particle3, int* particle4, int* particle5, int* chiralCheckAtomIndex, int* gridIndex) {
    OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionParameters(target, index, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_GETTORSIONTORSIONPARAMETERS(const OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, int* particle1, int* particle2, int* particle3, int* particle4, int* particle5, int* chiralCheckAtomIndex, int* gridIndex) {
    OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionParameters(target, index, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_settorsiontorsionparameters_(OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, int const& particle1, int const& particle2, int const& particle3, int const& particle4, int const& particle5, int const& chiralCheckAtomIndex, int const& gridIndex) {
    OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionParameters(target, index, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_SETTORSIONTORSIONPARAMETERS(OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, int const& particle1, int const& particle2, int const& particle3, int const& particle4, int const& particle5, int const& chiralCheckAtomIndex, int const& gridIndex) {
    OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionParameters(target, index, particle1, particle2, particle3, particle4, particle5, chiralCheckAtomIndex, gridIndex);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_gettorsiontorsiongrid_(const OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, const OpenMM_3D_DoubleArray*& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionGrid(target, index);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_GETTORSIONTORSIONGRID(const OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, const OpenMM_3D_DoubleArray*& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionGrid(target, index);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_settorsiontorsiongrid_(OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, const OpenMM_3D_DoubleArray*& grid) {
    OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionGrid(target, index, grid);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_SETTORSIONTORSIONGRID(OpenMM_AmoebaTorsionTorsionForce*& target, int const& index, const OpenMM_3D_DoubleArray*& grid) {
    OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionGrid(target, index, grid);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_setusesperiodicboundaryconditions_(OpenMM_AmoebaTorsionTorsionForce*& target, OpenMM_Boolean& periodic) {
    OpenMM_AmoebaTorsionTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_SETUSESPERIODICBOUNDARYCONDITIONS(OpenMM_AmoebaTorsionTorsionForce*& target, OpenMM_Boolean& periodic) {
    OpenMM_AmoebaTorsionTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebatorsiontorsionforce_usesperiodicboundaryconditions_(const OpenMM_AmoebaTorsionTorsionForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBATORSIONTORSIONFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_AmoebaTorsionTorsionForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaTorsionTorsionForce_usesPeriodicBoundaryConditions(target);
}

/* OpenMM::AmoebaMultipoleForce */
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_create_(OpenMM_AmoebaMultipoleForce*& result) {
    result = OpenMM_AmoebaMultipoleForce_create();
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_CREATE(OpenMM_AmoebaMultipoleForce*& result) {
    result = OpenMM_AmoebaMultipoleForce_create();
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_destroy_(OpenMM_AmoebaMultipoleForce*& destroy) {
    OpenMM_AmoebaMultipoleForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_DESTROY(OpenMM_AmoebaMultipoleForce*& destroy) {
    OpenMM_AmoebaMultipoleForce_destroy(destroy);
    destroy = 0;
}
OPENMM_EXPORT_AMOEBA int openmm_amoebamultipoleforce_getnummultipoles_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getNumMultipoles(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAMULTIPOLEFORCE_GETNUMMULTIPOLES(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getNumMultipoles(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getnonbondedmethod_(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_NonbondedMethod& result) {
    result = OpenMM_AmoebaMultipoleForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETNONBONDEDMETHOD(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_NonbondedMethod& result) {
    result = OpenMM_AmoebaMultipoleForce_getNonbondedMethod(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setnonbondedmethod_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_NonbondedMethod& method) {
    OpenMM_AmoebaMultipoleForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETNONBONDEDMETHOD(OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_NonbondedMethod& method) {
    OpenMM_AmoebaMultipoleForce_setNonbondedMethod(target, method);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getpolarizationtype_(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_PolarizationType& result) {
    result = OpenMM_AmoebaMultipoleForce_getPolarizationType(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETPOLARIZATIONTYPE(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_PolarizationType& result) {
    result = OpenMM_AmoebaMultipoleForce_getPolarizationType(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setpolarizationtype_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_PolarizationType& type) {
    OpenMM_AmoebaMultipoleForce_setPolarizationType(target, type);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETPOLARIZATIONTYPE(OpenMM_AmoebaMultipoleForce*& target, OpenMM_AmoebaMultipoleForce_PolarizationType& type) {
    OpenMM_AmoebaMultipoleForce_setPolarizationType(target, type);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebamultipoleforce_getcutoffdistance_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAMULTIPOLEFORCE_GETCUTOFFDISTANCE(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getCutoffDistance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setcutoffdistance_(OpenMM_AmoebaMultipoleForce*& target, double const& distance) {
    OpenMM_AmoebaMultipoleForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETCUTOFFDISTANCE(OpenMM_AmoebaMultipoleForce*& target, double const& distance) {
    OpenMM_AmoebaMultipoleForce_setCutoffDistance(target, distance);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getpmeparameters_(const OpenMM_AmoebaMultipoleForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_AmoebaMultipoleForce_getPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETPMEPARAMETERS(const OpenMM_AmoebaMultipoleForce*& target, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_AmoebaMultipoleForce_getPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setpmeparameters_(OpenMM_AmoebaMultipoleForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_AmoebaMultipoleForce_setPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETPMEPARAMETERS(OpenMM_AmoebaMultipoleForce*& target, double const& alpha, int const& nx, int const& ny, int const& nz) {
    OpenMM_AmoebaMultipoleForce_setPMEParameters(target, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebamultipoleforce_getaewald_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getAEwald(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAMULTIPOLEFORCE_GETAEWALD(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getAEwald(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setaewald_(OpenMM_AmoebaMultipoleForce*& target, double const& aewald) {
    OpenMM_AmoebaMultipoleForce_setAEwald(target, aewald);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETAEWALD(OpenMM_AmoebaMultipoleForce*& target, double const& aewald) {
    OpenMM_AmoebaMultipoleForce_setAEwald(target, aewald);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebamultipoleforce_getpmebsplineorder_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getPmeBSplineOrder(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAMULTIPOLEFORCE_GETPMEBSPLINEORDER(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getPmeBSplineOrder(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getpmegriddimensions_(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_IntArray*& gridDimension) {
    OpenMM_AmoebaMultipoleForce_getPmeGridDimensions(target, gridDimension);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETPMEGRIDDIMENSIONS(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_IntArray*& gridDimension) {
    OpenMM_AmoebaMultipoleForce_getPmeGridDimensions(target, gridDimension);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setpmegriddimensions_(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_IntArray*& gridDimension) {
    OpenMM_AmoebaMultipoleForce_setPmeGridDimensions(target, gridDimension);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETPMEGRIDDIMENSIONS(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_IntArray*& gridDimension) {
    OpenMM_AmoebaMultipoleForce_setPmeGridDimensions(target, gridDimension);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getpmeparametersincontext_(const OpenMM_AmoebaMultipoleForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_AmoebaMultipoleForce_getPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETPMEPARAMETERSINCONTEXT(const OpenMM_AmoebaMultipoleForce*& target, const OpenMM_Context*& context, double* alpha, int* nx, int* ny, int* nz) {
    OpenMM_AmoebaMultipoleForce_getPMEParametersInContext(target, context, alpha, nx, ny, nz);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebamultipoleforce_addmultipole_(OpenMM_AmoebaMultipoleForce*& target, double const& charge, const OpenMM_DoubleArray*& molecularDipole, const OpenMM_DoubleArray*& molecularQuadrupole, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY, double const& thole, double const& dampingFactor, double const& polarity) {
    return OpenMM_AmoebaMultipoleForce_addMultipole(target, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAMULTIPOLEFORCE_ADDMULTIPOLE(OpenMM_AmoebaMultipoleForce*& target, double const& charge, const OpenMM_DoubleArray*& molecularDipole, const OpenMM_DoubleArray*& molecularQuadrupole, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY, double const& thole, double const& dampingFactor, double const& polarity) {
    return OpenMM_AmoebaMultipoleForce_addMultipole(target, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getmultipoleparameters_(const OpenMM_AmoebaMultipoleForce*& target, int const& index, double* charge, OpenMM_DoubleArray*& molecularDipole, OpenMM_DoubleArray*& molecularQuadrupole, int* axisType, int* multipoleAtomZ, int* multipoleAtomX, int* multipoleAtomY, double* thole, double* dampingFactor, double* polarity) {
    OpenMM_AmoebaMultipoleForce_getMultipoleParameters(target, index, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETMULTIPOLEPARAMETERS(const OpenMM_AmoebaMultipoleForce*& target, int const& index, double* charge, OpenMM_DoubleArray*& molecularDipole, OpenMM_DoubleArray*& molecularQuadrupole, int* axisType, int* multipoleAtomZ, int* multipoleAtomX, int* multipoleAtomY, double* thole, double* dampingFactor, double* polarity) {
    OpenMM_AmoebaMultipoleForce_getMultipoleParameters(target, index, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setmultipoleparameters_(OpenMM_AmoebaMultipoleForce*& target, int const& index, double const& charge, const OpenMM_DoubleArray*& molecularDipole, const OpenMM_DoubleArray*& molecularQuadrupole, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY, double const& thole, double const& dampingFactor, double const& polarity) {
    OpenMM_AmoebaMultipoleForce_setMultipoleParameters(target, index, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETMULTIPOLEPARAMETERS(OpenMM_AmoebaMultipoleForce*& target, int const& index, double const& charge, const OpenMM_DoubleArray*& molecularDipole, const OpenMM_DoubleArray*& molecularQuadrupole, int const& axisType, int const& multipoleAtomZ, int const& multipoleAtomX, int const& multipoleAtomY, double const& thole, double const& dampingFactor, double const& polarity) {
    OpenMM_AmoebaMultipoleForce_setMultipoleParameters(target, index, charge, molecularDipole, molecularQuadrupole, axisType, multipoleAtomZ, multipoleAtomX, multipoleAtomY, thole, dampingFactor, polarity);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setcovalentmap_(OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_AmoebaMultipoleForce_CovalentType& typeId, const OpenMM_IntArray*& covalentAtoms) {
    OpenMM_AmoebaMultipoleForce_setCovalentMap(target, index, typeId, covalentAtoms);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETCOVALENTMAP(OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_AmoebaMultipoleForce_CovalentType& typeId, const OpenMM_IntArray*& covalentAtoms) {
    OpenMM_AmoebaMultipoleForce_setCovalentMap(target, index, typeId, covalentAtoms);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getcovalentmap_(const OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_AmoebaMultipoleForce_CovalentType& typeId, OpenMM_IntArray*& covalentAtoms) {
    OpenMM_AmoebaMultipoleForce_getCovalentMap(target, index, typeId, covalentAtoms);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETCOVALENTMAP(const OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_AmoebaMultipoleForce_CovalentType& typeId, OpenMM_IntArray*& covalentAtoms) {
    OpenMM_AmoebaMultipoleForce_getCovalentMap(target, index, typeId, covalentAtoms);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getcovalentmaps_(const OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_2D_IntArray*& covalentLists) {
    OpenMM_AmoebaMultipoleForce_getCovalentMaps(target, index, covalentLists);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETCOVALENTMAPS(const OpenMM_AmoebaMultipoleForce*& target, int const& index, OpenMM_2D_IntArray*& covalentLists) {
    OpenMM_AmoebaMultipoleForce_getCovalentMaps(target, index, covalentLists);
}
OPENMM_EXPORT_AMOEBA int openmm_amoebamultipoleforce_getmutualinducedmaxiterations_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getMutualInducedMaxIterations(target);
}
OPENMM_EXPORT_AMOEBA int OPENMM_AMOEBAMULTIPOLEFORCE_GETMUTUALINDUCEDMAXITERATIONS(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getMutualInducedMaxIterations(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setmutualinducedmaxiterations_(OpenMM_AmoebaMultipoleForce*& target, int const& inputMutualInducedMaxIterations) {
    OpenMM_AmoebaMultipoleForce_setMutualInducedMaxIterations(target, inputMutualInducedMaxIterations);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETMUTUALINDUCEDMAXITERATIONS(OpenMM_AmoebaMultipoleForce*& target, int const& inputMutualInducedMaxIterations) {
    OpenMM_AmoebaMultipoleForce_setMutualInducedMaxIterations(target, inputMutualInducedMaxIterations);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebamultipoleforce_getmutualinducedtargetepsilon_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getMutualInducedTargetEpsilon(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAMULTIPOLEFORCE_GETMUTUALINDUCEDTARGETEPSILON(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getMutualInducedTargetEpsilon(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setmutualinducedtargetepsilon_(OpenMM_AmoebaMultipoleForce*& target, double const& inputMutualInducedTargetEpsilon) {
    OpenMM_AmoebaMultipoleForce_setMutualInducedTargetEpsilon(target, inputMutualInducedTargetEpsilon);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETMUTUALINDUCEDTARGETEPSILON(OpenMM_AmoebaMultipoleForce*& target, double const& inputMutualInducedTargetEpsilon) {
    OpenMM_AmoebaMultipoleForce_setMutualInducedTargetEpsilon(target, inputMutualInducedTargetEpsilon);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setextrapolationcoefficients_(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_DoubleArray*& coefficients) {
    OpenMM_AmoebaMultipoleForce_setExtrapolationCoefficients(target, coefficients);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETEXTRAPOLATIONCOEFFICIENTS(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_DoubleArray*& coefficients) {
    OpenMM_AmoebaMultipoleForce_setExtrapolationCoefficients(target, coefficients);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getextrapolationcoefficients_(const OpenMM_AmoebaMultipoleForce*& target, const OpenMM_DoubleArray*& result) {
    result = OpenMM_AmoebaMultipoleForce_getExtrapolationCoefficients(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETEXTRAPOLATIONCOEFFICIENTS(const OpenMM_AmoebaMultipoleForce*& target, const OpenMM_DoubleArray*& result) {
    result = OpenMM_AmoebaMultipoleForce_getExtrapolationCoefficients(target);
}
OPENMM_EXPORT_AMOEBA double openmm_amoebamultipoleforce_getewalderrortolerance_(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getEwaldErrorTolerance(target);
}
OPENMM_EXPORT_AMOEBA double OPENMM_AMOEBAMULTIPOLEFORCE_GETEWALDERRORTOLERANCE(const OpenMM_AmoebaMultipoleForce*& target) {
    return OpenMM_AmoebaMultipoleForce_getEwaldErrorTolerance(target);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_setewalderrortolerance_(OpenMM_AmoebaMultipoleForce*& target, double const& tol) {
    OpenMM_AmoebaMultipoleForce_setEwaldErrorTolerance(target, tol);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_SETEWALDERRORTOLERANCE(OpenMM_AmoebaMultipoleForce*& target, double const& tol) {
    OpenMM_AmoebaMultipoleForce_setEwaldErrorTolerance(target, tol);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getlabframepermanentdipoles_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getLabFramePermanentDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETLABFRAMEPERMANENTDIPOLES(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getLabFramePermanentDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getinduceddipoles_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getInducedDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETINDUCEDDIPOLES(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getInducedDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_gettotaldipoles_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getTotalDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETTOTALDIPOLES(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_Vec3Array*& dipoles) {
    OpenMM_AmoebaMultipoleForce_getTotalDipoles(target, context, dipoles);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getelectrostaticpotential_(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_Vec3Array*& inputGrid, OpenMM_Context*& context, OpenMM_DoubleArray*& outputElectrostaticPotential) {
    OpenMM_AmoebaMultipoleForce_getElectrostaticPotential(target, inputGrid, context, outputElectrostaticPotential);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETELECTROSTATICPOTENTIAL(OpenMM_AmoebaMultipoleForce*& target, const OpenMM_Vec3Array*& inputGrid, OpenMM_Context*& context, OpenMM_DoubleArray*& outputElectrostaticPotential) {
    OpenMM_AmoebaMultipoleForce_getElectrostaticPotential(target, inputGrid, context, outputElectrostaticPotential);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_getsystemmultipolemoments_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_DoubleArray*& outputMultipoleMoments) {
    OpenMM_AmoebaMultipoleForce_getSystemMultipoleMoments(target, context, outputMultipoleMoments);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_GETSYSTEMMULTIPOLEMOMENTS(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context, OpenMM_DoubleArray*& outputMultipoleMoments) {
    OpenMM_AmoebaMultipoleForce_getSystemMultipoleMoments(target, context, outputMultipoleMoments);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_updateparametersincontext_(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaMultipoleForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_UPDATEPARAMETERSINCONTEXT(OpenMM_AmoebaMultipoleForce*& target, OpenMM_Context*& context) {
    OpenMM_AmoebaMultipoleForce_updateParametersInContext(target, context);
}
OPENMM_EXPORT_AMOEBA void openmm_amoebamultipoleforce_usesperiodicboundaryconditions_(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaMultipoleForce_usesPeriodicBoundaryConditions(target);
}
OPENMM_EXPORT_AMOEBA void OPENMM_AMOEBAMULTIPOLEFORCE_USESPERIODICBOUNDARYCONDITIONS(const OpenMM_AmoebaMultipoleForce*& target, OpenMM_Boolean& result) {
    result = OpenMM_AmoebaMultipoleForce_usesPeriodicBoundaryConditions(target);
}

}
