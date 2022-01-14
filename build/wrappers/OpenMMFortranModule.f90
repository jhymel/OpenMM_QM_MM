
MODULE OpenMM_Types
    implicit none

    ! Global Constants

    integer, parameter :: dp = kind(1.d0)
    real*8, parameter :: OpenMM_NmPerAngstrom =  0.1_dp
    real*8, parameter :: OpenMM_AngstromsPerNm =  10.0_dp
    real*8, parameter :: OpenMM_PsPerFs =  0.001_dp
    real*8, parameter :: OpenMM_FsPerPs =  1000.0_dp
    real*8, parameter :: OpenMM_KJPerKcal =  4.184_dp
    real*8, parameter :: OpenMM_KcalPerKJ =  1.0_dp/4.184_dp
    real*8, parameter :: OpenMM_RadiansPerDegree =  3.1415926535897932385_dp/180.0_dp
    real*8, parameter :: OpenMM_DegreesPerRadian =  180.0_dp/3.1415926535897932385_dp
    real*8, parameter :: OpenMM_SigmaPerVdwRadius =  1.7817974362806786095_dp
    real*8, parameter :: OpenMM_VdwRadiusPerSigma =  .56123102415468649070_dp

    ! Type Declarations

    type OpenMM_System
        integer*8 :: handle = 0
    end type

    type OpenMM_Integrator
        integer*8 :: handle = 0
    end type

    type OpenMM_Force
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomCentroidBondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_GayBerneForce
        integer*8 :: handle = 0
    end type

    type OpenMM_VirtualSite
        integer*8 :: handle = 0
    end type

    type OpenMM_TwoParticleAverageSite
        integer*8 :: handle = 0
    end type

    type OpenMM_HarmonicBondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomBondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_TabulatedFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_CMMotionRemover
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomNonbondedForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomAngleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_MonteCarloFlexibleBarostat
        integer*8 :: handle = 0
    end type

    type OpenMM_NoseHooverIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_NoseHooverChain
        integer*8 :: handle = 0
    end type

    type OpenMM_MonteCarloAnisotropicBarostat
        integer*8 :: handle = 0
    end type

    type OpenMM_NonbondedForce
        integer*8 :: handle = 0
    end type

    type OpenMM_LangevinIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomHbondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_Discrete2DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_BrownianIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_CMAPTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_OutOfPlaneSite
        integer*8 :: handle = 0
    end type

    type OpenMM_MonteCarloBarostat
        integer*8 :: handle = 0
    end type

    type OpenMM_VerletIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_LocalEnergyMinimizer
        integer*8 :: handle = 0
    end type

    type OpenMM_ThreeParticleAverageSite
        integer*8 :: handle = 0
    end type

    type OpenMM_Continuous3DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_Discrete1DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_AndersenThermostat
        integer*8 :: handle = 0
    end type

    type OpenMM_Platform
        integer*8 :: handle = 0
    end type

    type OpenMM_RBTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_VariableLangevinIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_Continuous2DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_LocalCoordinatesSite
        integer*8 :: handle = 0
    end type

    type OpenMM_VariableVerletIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_Context
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomExternalForce
        integer*8 :: handle = 0
    end type

    type OpenMM_PeriodicTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_State
        integer*8 :: handle = 0
    end type

    type OpenMM_LangevinMiddleIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_MonteCarloMembraneBarostat
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CompoundIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomGBForce
        integer*8 :: handle = 0
    end type

    type OpenMM_HarmonicAngleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomCVForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomIntegrator
        integer*8 :: handle = 0
    end type

    type OpenMM_GBSAOBCForce
        integer*8 :: handle = 0
    end type

    type OpenMM_Discrete3DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomManyParticleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_OpenMMException
        integer*8 :: handle = 0
    end type

    type OpenMM_RMSDForce
        integer*8 :: handle = 0
    end type

    type OpenMM_CustomCompoundBondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_Continuous1DFunction
        integer*8 :: handle = 0
    end type

    type OpenMM_Vec3Array
        integer*8 :: handle = 0
    end type

    type OpenMM_StringArray
        integer*8 :: handle = 0
    end type

    type OpenMM_BondArray
        integer*8 :: handle = 0
    end type

    type OpenMM_ParameterArray
        integer*8 :: handle = 0
    end type

    type OpenMM_PropertyArray
        integer*8 :: handle = 0
    end type

    type OpenMM_DoubleArray
        integer*8 :: handle = 0
    end type

    type OpenMM_IntArray
        integer*8 :: handle = 0
    end type

    type OpenMM_IntSet
        integer*8 :: handle = 0
    end type

    ! Enumerations

    integer*4, parameter :: OpenMM_False = 0
    integer*4, parameter :: OpenMM_True = 1
    integer*4, parameter :: OpenMM_GayBerneForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_GayBerneForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_GayBerneForce_CutoffPeriodic = 2

    integer*4, parameter :: OpenMM_CustomNonbondedForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_CustomNonbondedForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_CustomNonbondedForce_CutoffPeriodic = 2

    integer*4, parameter :: OpenMM_NonbondedForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_NonbondedForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_NonbondedForce_CutoffPeriodic = 2
    integer*4, parameter :: OpenMM_NonbondedForce_Ewald = 3
    integer*4, parameter :: OpenMM_NonbondedForce_PME = 4
    integer*4, parameter :: OpenMM_NonbondedForce_LJPME = 5

    integer*4, parameter :: OpenMM_CustomHbondForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_CustomHbondForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_CustomHbondForce_CutoffPeriodic = 2

    integer*4, parameter :: OpenMM_State_Positions = 1
    integer*4, parameter :: OpenMM_State_Velocities = 2
    integer*4, parameter :: OpenMM_State_Forces = 4
    integer*4, parameter :: OpenMM_State_Energy = 8
    integer*4, parameter :: OpenMM_State_Parameters = 16
    integer*4, parameter :: OpenMM_State_ParameterDerivatives = 32
    integer*4, parameter :: OpenMM_State_IntegratorParameters = 64
    integer*4, parameter :: OpenMM_State_Vext_grids = 128

    integer*4, parameter :: OpenMM_MonteCarloMembraneBarostat_XYIsotropic = 0
    integer*4, parameter :: OpenMM_MonteCarloMembraneBarostat_XYAnisotropic = 1
    integer*4, parameter :: OpenMM_MonteCarloMembraneBarostat_ZFree = 0
    integer*4, parameter :: OpenMM_MonteCarloMembraneBarostat_ZFixed = 1
    integer*4, parameter :: OpenMM_MonteCarloMembraneBarostat_ConstantVolume = 2

    integer*4, parameter :: OpenMM_CustomGBForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_CustomGBForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_CustomGBForce_CutoffPeriodic = 2
    integer*4, parameter :: OpenMM_CustomGBForce_SingleParticle = 0
    integer*4, parameter :: OpenMM_CustomGBForce_ParticlePair = 1
    integer*4, parameter :: OpenMM_CustomGBForce_ParticlePairNoExclusions = 2

    integer*4, parameter :: OpenMM_CustomIntegrator_ComputeGlobal = 0
    integer*4, parameter :: OpenMM_CustomIntegrator_ComputePerDof = 1
    integer*4, parameter :: OpenMM_CustomIntegrator_ComputeSum = 2
    integer*4, parameter :: OpenMM_CustomIntegrator_ConstrainPositions = 3
    integer*4, parameter :: OpenMM_CustomIntegrator_ConstrainVelocities = 4
    integer*4, parameter :: OpenMM_CustomIntegrator_UpdateContextState = 5
    integer*4, parameter :: OpenMM_CustomIntegrator_IfBlockStart = 6
    integer*4, parameter :: OpenMM_CustomIntegrator_WhileBlockStart = 7
    integer*4, parameter :: OpenMM_CustomIntegrator_BlockEnd = 8

    integer*4, parameter :: OpenMM_GBSAOBCForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_GBSAOBCForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_GBSAOBCForce_CutoffPeriodic = 2

    integer*4, parameter :: OpenMM_CustomManyParticleForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_CustomManyParticleForce_CutoffNonPeriodic = 1
    integer*4, parameter :: OpenMM_CustomManyParticleForce_CutoffPeriodic = 2
    integer*4, parameter :: OpenMM_CustomManyParticleForce_SinglePermutation = 0
    integer*4, parameter :: OpenMM_CustomManyParticleForce_UniqueCentralParticle = 1


END MODULE OpenMM_Types

MODULE OpenMM
    use OpenMM_Types; implicit none
    interface

        ! OpenMM_Vec3
        subroutine OpenMM_Vec3_scale(vec, scale, result)
            use OpenMM_Types; implicit none
            real*8 vec(3)
            real*8 scale
            real*8 result(3)
        end subroutine

        ! OpenMM_Vec3Array
        subroutine OpenMM_Vec3Array_create(result, size)
            use OpenMM_Types; implicit none
            integer*4 size
            type (OpenMM_Vec3Array) result
        end subroutine
        subroutine OpenMM_Vec3Array_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) destroy
        end subroutine
        function OpenMM_Vec3Array_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) target
            integer*4 OpenMM_Vec3Array_getSize
        end function
        subroutine OpenMM_Vec3Array_resize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) target
            integer*4 size
        end subroutine
        subroutine OpenMM_Vec3Array_append(target, vec)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) target
            real*8 vec(3)
        end subroutine
        subroutine OpenMM_Vec3Array_set(target, index, vec)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) target
            integer*4 index
            real*8 vec(3)
        end subroutine
        subroutine OpenMM_Vec3Array_get(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Vec3Array) target
            integer*4 index
            real*8 result(3)
        end subroutine

        ! OpenMM_StringArray
        subroutine OpenMM_StringArray_create(result, size)
            use OpenMM_Types; implicit none
            integer*4 size
            type (OpenMM_StringArray) result
        end subroutine
        subroutine OpenMM_StringArray_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) destroy
        end subroutine
        function OpenMM_StringArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) target
            integer*4 OpenMM_StringArray_getSize
        end function
        subroutine OpenMM_StringArray_resize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) target
            integer*4 size
        end subroutine
        subroutine OpenMM_StringArray_append(target, str)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) target
            character(*) str
        end subroutine
        subroutine OpenMM_StringArray_set(target, index, str)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) target
            integer*4 index
            character(*) str
        end subroutine
        subroutine OpenMM_StringArray_get(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_StringArray) target
            integer*4 index
            character(*) result
        end subroutine

        ! OpenMM_BondArray
        subroutine OpenMM_BondArray_create(result, size)
            use OpenMM_Types; implicit none
            integer*4 size
            type (OpenMM_BondArray) result
        end subroutine
        subroutine OpenMM_BondArray_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) destroy
        end subroutine
        function OpenMM_BondArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) target
            integer*4 OpenMM_BondArray_getSize
        end function
        subroutine OpenMM_BondArray_resize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) target
            integer*4 size
        end subroutine
        subroutine OpenMM_BondArray_append(target, particle1, particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) target
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_BondArray_set(target, index, particle1, particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_BondArray_get(target, index, particle1, particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_BondArray) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine

        ! OpenMM_ParameterArray
        function OpenMM_ParameterArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_ParameterArray) target
            integer*4 OpenMM_ParameterArray_getSize
        end function
        subroutine OpenMM_ParameterArray_get(target, name, result)
            use OpenMM_Types; implicit none
            type (OpenMM_ParameterArray) target
            character(*) name
            character(*) result
        end subroutine

        ! OpenMM_PropertyArray
        function OpenMM_PropertyArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_ParameterArray) target
            integer*4 OpenMM_PropertyArray_getSize
        end function
        subroutine OpenMM_PropertyArray_get(target, name, result)
            use OpenMM_Types; implicit none
            type (OpenMM_PropertyArray) target
            character(*) name
            character(*) result
        end subroutine

        ! OpenMM_DoubleArray
        subroutine OpenMM_DoubleArray_create(result, size)
            use OpenMM_Types; implicit none
            integer*4 size
            type (OpenMM_DoubleArray) result
        end subroutine
        subroutine OpenMM_DoubleArray_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) destroy
        end subroutine
        function OpenMM_DoubleArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) target
            integer*4 OpenMM_DoubleArray_getSize
        end function
        subroutine OpenMM_DoubleArray_resize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) target
            integer*4 size
        end subroutine
        subroutine OpenMM_DoubleArray_append(target, value)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) target
            real*8 value
        end subroutine
        subroutine OpenMM_DoubleArray_set(target, index, value)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) target
            integer*4 index
            real*8 value
        end subroutine
        subroutine OpenMM_DoubleArray_get(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_DoubleArray) target
            integer*4 index
            real*8 result
        end subroutine

        ! OpenMM_IntArray
        subroutine OpenMM_IntArray_create(result, size)
            use OpenMM_Types; implicit none
            integer*4 size
            type (OpenMM_IntArray) result
        end subroutine
        subroutine OpenMM_IntArray_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) destroy
        end subroutine
        function OpenMM_IntArray_getSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) target
            integer*4 OpenMM_IntArray_getSize
        end function
        subroutine OpenMM_IntArray_resize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) target
            integer*4 size
        end subroutine
        subroutine OpenMM_IntArray_append(target, value)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) target
            integer*4 value
        end subroutine
        subroutine OpenMM_IntArray_set(target, index, value)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) target
            integer*4 index
            integer*4 value
        end subroutine
        subroutine OpenMM_IntArray_get(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_IntArray) target
            integer*4 index
            integer*4 result
        end subroutine

        ! These methods need to be handled specially, since their C++ APIs cannot be directly translated to Fortran.
        ! Unlike the C++ versions, the return value is allocated on the heap, and you must delete it yourself.
        subroutine OpenMM_Context_getState(target, types, enforcePeriodicBox, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            integer*4 types
            integer*4 enforcePeriodicBox
            type(OpenMM_State) result
        end subroutine
        subroutine OpenMM_Context_getState_2(target, types, enforcePeriodicBox, groups, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            integer*4 types
            integer*4 enforcePeriodicBox
            integer*4 groups
            type(OpenMM_State) result
        end subroutine
        subroutine OpenMM_Platform_loadPluginsFromDirectory(directory, result)
            use OpenMM_Types; implicit none
            character(*) directory
            type(OpenMM_StringArray) result
        end subroutine
        subroutine OpenMM_Platform_getPluginLoadFailures(result)
            use OpenMM_Types; implicit none
            type(OpenMM_StringArray) result
        end subroutine
        subroutine OpenMM_XmlSerializer_serializeSystemToC(system, result, result_length)
            use iso_c_binding; use OpenMM_Types; implicit none
            type(OpenMM_System), intent(in) :: system
            type(c_ptr), intent(out) :: result
            integer, intent(out) :: result_length
        end subroutine
        subroutine OpenMM_XmlSerializer_serializeStateToC(state, result, result_length)
            use iso_c_binding; use OpenMM_Types; implicit none
            type(OpenMM_State), intent(in) :: state
            type(c_ptr), intent(out) :: result
            integer, intent(out) :: result_length
        end subroutine
        subroutine OpenMM_XmlSerializer_serializeIntegratorToC(integrator, result, result_length)
            use iso_c_binding; use OpenMM_Types; implicit none
            type(OpenMM_Integrator), intent(in) :: integrator
            type(c_ptr), intent(out) :: result
            integer, intent(out) :: result_length
        end subroutine
        subroutine OpenMM_XmlSerializer_deserializeSystem(xml, result)
            use OpenMM_Types; implicit none
            character(*) xml
            type(OpenMM_System) result
        end subroutine
        subroutine OpenMM_XmlSerializer_deserializeState(xml, result)
            use OpenMM_Types; implicit none
            character(*) xml
            type(OpenMM_State) result
        end subroutine
        subroutine OpenMM_XmlSerializer_deserializeIntegrator(xml, result)
            use OpenMM_Types; implicit none
            character(*) xml
            type(OpenMM_Integrator) result
        end subroutine

        ! OpenMM::System
        subroutine OpenMM_System_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_System) result
        end subroutine
        subroutine OpenMM_System_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_System) destroy
        end subroutine
        function OpenMM_System_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 OpenMM_System_getNumParticles
        end function
        function OpenMM_System_addParticle(target, mass)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            real*8 mass
            integer*4 OpenMM_System_addParticle
        end function
        function OpenMM_System_getParticleMass(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            real*8 OpenMM_System_getParticleMass
        end function
        subroutine OpenMM_System_setParticleMass(target, index, &
mass)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            real*8 mass
        end subroutine
        subroutine OpenMM_System_setVirtualSite(target, index, &
virtualSite)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            type (OpenMM_VirtualSite) virtualSite
        end subroutine
        function OpenMM_System_isVirtualSite(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            integer*4 OpenMM_System_isVirtualSite
        end function
        subroutine OpenMM_System_getVirtualSite(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            type (OpenMM_VirtualSite) result
        end subroutine
        function OpenMM_System_getNumConstraints(target)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 OpenMM_System_getNumConstraints
        end function
        function OpenMM_System_addConstraint(target, particle1, &
particle2, &
distance)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 particle1
            integer*4 particle2
            real*8 distance
            integer*4 OpenMM_System_addConstraint
        end function
        subroutine OpenMM_System_getConstraintParameters(target, index, &
particle1, &
particle2, &
distance)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 distance
        end subroutine
        subroutine OpenMM_System_setConstraintParameters(target, index, &
particle1, &
particle2, &
distance)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 distance
        end subroutine
        subroutine OpenMM_System_removeConstraint(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
        end subroutine
        function OpenMM_System_addForce(target, force)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            type (OpenMM_Force) force
            integer*4 OpenMM_System_addForce
        end function
        function OpenMM_System_getNumForces(target)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 OpenMM_System_getNumForces
        end function
        subroutine OpenMM_System_getForce(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
            type (OpenMM_Force) result
        end subroutine
        subroutine OpenMM_System_removeForce(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 index
        end subroutine
        subroutine OpenMM_System_getDefaultPeriodicBoxVectors(target, a, &
b, &
c)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            real*8 a(3)
            real*8 b(3)
            real*8 c(3)
        end subroutine
        subroutine OpenMM_System_setDefaultPeriodicBoxVectors(target, a, &
b, &
c)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            real*8 a(3)
            real*8 b(3)
            real*8 c(3)
        end subroutine
        function OpenMM_System_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_System) target
            integer*4 OpenMM_System_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::Integrator
        subroutine OpenMM_Integrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) destroy
        end subroutine
        function OpenMM_Integrator_getStepSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            real*8 OpenMM_Integrator_getStepSize
        end function
        subroutine OpenMM_Integrator_setStepSize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            real*8 size
        end subroutine
        function OpenMM_Integrator_getConstraintTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            real*8 OpenMM_Integrator_getConstraintTolerance
        end function
        subroutine OpenMM_Integrator_setConstraintTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            real*8 tol
        end subroutine
        subroutine OpenMM_Integrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            integer*4 steps
        end subroutine
        function OpenMM_Integrator_getIntegrationForceGroups(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            integer*4 OpenMM_Integrator_getIntegrationForceGroups
        end function
        subroutine OpenMM_Integrator_setIntegrationForceGroups(target, groups)
            use OpenMM_Types; implicit none
            type (OpenMM_Integrator) target
            integer*4 groups
        end subroutine

        ! OpenMM::Force
        subroutine OpenMM_Force_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) destroy
        end subroutine
        function OpenMM_Force_getForceGroup(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) target
            integer*4 OpenMM_Force_getForceGroup
        end function
        subroutine OpenMM_Force_setForceGroup(target, group)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) target
            integer*4 group
        end subroutine
        subroutine OpenMM_Force_getName(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) target
            character(*) result
        end subroutine
        subroutine OpenMM_Force_setName(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) target
            character(*) name
        end subroutine
        function OpenMM_Force_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Force) target
            integer*4 OpenMM_Force_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomCentroidBondForce
        subroutine OpenMM_CustomCentroidBondForce_create(result, numGroups, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) result
            integer*4 numGroups
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) destroy
        end subroutine
        function OpenMM_CustomCentroidBondForce_getNumGroupsPerBond(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumGroupsPerBond
        end function
        function OpenMM_CustomCentroidBondForce_getNumGroups(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumGroups
        end function
        function OpenMM_CustomCentroidBondForce_getNumBonds(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumBonds
        end function
        function OpenMM_CustomCentroidBondForce_getNumPerBondParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumPerBondParameters
        end function
        function OpenMM_CustomCentroidBondForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumGlobalParameters
        end function
        function OpenMM_CustomCentroidBondForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumEnergyParameterDerivatives
        end function
        function OpenMM_CustomCentroidBondForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumTabulatedFunctions
        end function
        function OpenMM_CustomCentroidBondForce_getNumFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_getNumFunctions
        end function
        subroutine OpenMM_CustomCentroidBondForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomCentroidBondForce_addPerBondParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) name
            integer*4 OpenMM_CustomCentroidBondForce_addPerBondParameter
        end function
        subroutine OpenMM_CustomCentroidBondForce_getPerBondParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setPerBondParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomCentroidBondForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomCentroidBondForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomCentroidBondForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomCentroidBondForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            real*8 OpenMM_CustomCentroidBondForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomCentroidBondForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomCentroidBondForce_addGroup(target, particles, &
weights)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) weights
            integer*4 OpenMM_CustomCentroidBondForce_addGroup
        end function
        subroutine OpenMM_CustomCentroidBondForce_getGroupParameters(target, index, &
particles, &
weights)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) weights
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setGroupParameters(target, index, &
particles, &
weights)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) weights
        end subroutine
        function OpenMM_CustomCentroidBondForce_addBond(target, groups, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            type (OpenMM_IntArray) groups
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomCentroidBondForce_addBond
        end function
        subroutine OpenMM_CustomCentroidBondForce_getBondParameters(target, index, &
groups, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            type (OpenMM_IntArray) groups
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setBondParameters(target, index, &
groups, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            type (OpenMM_IntArray) groups
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomCentroidBondForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomCentroidBondForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomCentroidBondForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CustomCentroidBondForce_setUsesPeriodicBoundaryCondition(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CustomCentroidBondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCentroidBondForce) target
            integer*4 OpenMM_CustomCentroidBondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::GayBerneForce
        subroutine OpenMM_GayBerneForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) result
        end subroutine
        subroutine OpenMM_GayBerneForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) destroy
        end subroutine
        function OpenMM_GayBerneForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 OpenMM_GayBerneForce_getNumParticles
        end function
        function OpenMM_GayBerneForce_getNumExceptions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 OpenMM_GayBerneForce_getNumExceptions
        end function
        function OpenMM_GayBerneForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 OpenMM_GayBerneForce_getNonbondedMethod
        end function
        subroutine OpenMM_GayBerneForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 method
        end subroutine
        function OpenMM_GayBerneForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            real*8 OpenMM_GayBerneForce_getCutoffDistance
        end function
        subroutine OpenMM_GayBerneForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            real*8 distance
        end subroutine
        function OpenMM_GayBerneForce_getUseSwitchingFunction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 OpenMM_GayBerneForce_getUseSwitchingFunction
        end function
        subroutine OpenMM_GayBerneForce_setUseSwitchingFunction(target, use)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 use
        end subroutine
        function OpenMM_GayBerneForce_getSwitchingDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            real*8 OpenMM_GayBerneForce_getSwitchingDistance
        end function
        subroutine OpenMM_GayBerneForce_setSwitchingDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            real*8 distance
        end subroutine
        function OpenMM_GayBerneForce_addParticle(target, sigma, &
epsilon, &
xparticle, &
yparticle, &
sx, &
sy, &
sz, &
ex, &
ey, &
ez)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            real*8 sigma
            real*8 epsilon
            integer*4 xparticle
            integer*4 yparticle
            real*8 sx
            real*8 sy
            real*8 sz
            real*8 ex
            real*8 ey
            real*8 ez
            integer*4 OpenMM_GayBerneForce_addParticle
        end function
        subroutine OpenMM_GayBerneForce_getParticleParameters(target, index, &
sigma, &
epsilon, &
xparticle, &
yparticle, &
sx, &
sy, &
sz, &
ex, &
ey, &
ez)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 index
            real*8 sigma
            real*8 epsilon
            integer*4 xparticle
            integer*4 yparticle
            real*8 sx
            real*8 sy
            real*8 sz
            real*8 ex
            real*8 ey
            real*8 ez
        end subroutine
        subroutine OpenMM_GayBerneForce_setParticleParameters(target, index, &
sigma, &
epsilon, &
xparticle, &
yparticle, &
sx, &
sy, &
sz, &
ex, &
ey, &
ez)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 index
            real*8 sigma
            real*8 epsilon
            integer*4 xparticle
            integer*4 yparticle
            real*8 sx
            real*8 sy
            real*8 sz
            real*8 ex
            real*8 ey
            real*8 ez
        end subroutine
        function OpenMM_GayBerneForce_addException(target, particle1, &
particle2, &
sigma, &
epsilon, &
replace)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 particle1
            integer*4 particle2
            real*8 sigma
            real*8 epsilon
            integer*4 replace
            integer*4 OpenMM_GayBerneForce_addException
        end function
        subroutine OpenMM_GayBerneForce_getExceptionParameters(target, index, &
particle1, &
particle2, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 sigma
            real*8 epsilon
        end subroutine
        subroutine OpenMM_GayBerneForce_setExceptionParameters(target, index, &
particle1, &
particle2, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 sigma
            real*8 epsilon
        end subroutine
        subroutine OpenMM_GayBerneForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_GayBerneForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GayBerneForce) target
            integer*4 OpenMM_GayBerneForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::VirtualSite
        subroutine OpenMM_VirtualSite_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_VirtualSite) destroy
        end subroutine
        function OpenMM_VirtualSite_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VirtualSite) target
            integer*4 OpenMM_VirtualSite_getNumParticles
        end function
        function OpenMM_VirtualSite_getParticle(target, particle)
            use OpenMM_Types; implicit none
            type (OpenMM_VirtualSite) target
            integer*4 particle
            integer*4 OpenMM_VirtualSite_getParticle
        end function

        ! OpenMM::TwoParticleAverageSite
        subroutine OpenMM_TwoParticleAverageSite_create(result, particle1, &
particle2, &
weight1, &
weight2)
            use OpenMM_Types; implicit none
            type (OpenMM_TwoParticleAverageSite) result
            integer*4 particle1
            integer*4 particle2
            real*8 weight1
            real*8 weight2
        end subroutine
        subroutine OpenMM_TwoParticleAverageSite_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_TwoParticleAverageSite) destroy
        end subroutine
        function OpenMM_TwoParticleAverageSite_getWeight(target, particle)
            use OpenMM_Types; implicit none
            type (OpenMM_TwoParticleAverageSite) target
            integer*4 particle
            real*8 OpenMM_TwoParticleAverageSite_getWeight
        end function

        ! OpenMM::HarmonicBondForce
        subroutine OpenMM_HarmonicBondForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) result
        end subroutine
        subroutine OpenMM_HarmonicBondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) destroy
        end subroutine
        function OpenMM_HarmonicBondForce_getNumBonds(target)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 OpenMM_HarmonicBondForce_getNumBonds
        end function
        function OpenMM_HarmonicBondForce_addBond(target, particle1, &
particle2, &
length, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 k
            integer*4 OpenMM_HarmonicBondForce_addBond
        end function
        subroutine OpenMM_HarmonicBondForce_getBondParameters(target, index, &
particle1, &
particle2, &
length, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 k
        end subroutine
        subroutine OpenMM_HarmonicBondForce_setBondParameters(target, index, &
particle1, &
particle2, &
length, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 k
        end subroutine
        subroutine OpenMM_HarmonicBondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_HarmonicBondForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_HarmonicBondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicBondForce) target
            integer*4 OpenMM_HarmonicBondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomBondForce
        subroutine OpenMM_CustomBondForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomBondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) destroy
        end subroutine
        function OpenMM_CustomBondForce_getNumBonds(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 OpenMM_CustomBondForce_getNumBonds
        end function
        function OpenMM_CustomBondForce_getNumPerBondParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 OpenMM_CustomBondForce_getNumPerBondParameters
        end function
        function OpenMM_CustomBondForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 OpenMM_CustomBondForce_getNumGlobalParameters
        end function
        function OpenMM_CustomBondForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 OpenMM_CustomBondForce_getNumEnergyParameterDerivatives
        end function
        subroutine OpenMM_CustomBondForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomBondForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomBondForce_addPerBondParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            character(*) name
            integer*4 OpenMM_CustomBondForce_addPerBondParameter
        end function
        subroutine OpenMM_CustomBondForce_getPerBondParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomBondForce_setPerBondParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomBondForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomBondForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomBondForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomBondForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomBondForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            real*8 OpenMM_CustomBondForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomBondForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomBondForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomBondForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomBondForce_addBond(target, particle1, &
particle2, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 particle1
            integer*4 particle2
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomBondForce_addBond
        end function
        subroutine OpenMM_CustomBondForce_getBondParameters(target, index, &
particle1, &
particle2, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomBondForce_setBondParameters(target, index, &
particle1, &
particle2, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomBondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CustomBondForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CustomBondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomBondForce) target
            integer*4 OpenMM_CustomBondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::TabulatedFunction
        subroutine OpenMM_TabulatedFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_TabulatedFunction) destroy
        end subroutine
        subroutine OpenMM_TabulatedFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_TabulatedFunction) target
            type (OpenMM_TabulatedFunction) result
        end subroutine
        function OpenMM_TabulatedFunction_getPeriodic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_TabulatedFunction) target
            integer*4 OpenMM_TabulatedFunction_getPeriodic
        end function

        ! OpenMM::CMMotionRemover
        subroutine OpenMM_CMMotionRemover_create(result, frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_CMMotionRemover) result
            integer*4 frequency
        end subroutine
        subroutine OpenMM_CMMotionRemover_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CMMotionRemover) destroy
        end subroutine
        function OpenMM_CMMotionRemover_getFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CMMotionRemover) target
            integer*4 OpenMM_CMMotionRemover_getFrequency
        end function
        subroutine OpenMM_CMMotionRemover_setFrequency(target, freq)
            use OpenMM_Types; implicit none
            type (OpenMM_CMMotionRemover) target
            integer*4 freq
        end subroutine
        function OpenMM_CMMotionRemover_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CMMotionRemover) target
            integer*4 OpenMM_CMMotionRemover_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomNonbondedForce
        subroutine OpenMM_CustomNonbondedForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_create_2(result, rhs)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) result
            type (OpenMM_CustomNonbondedForce) rhs
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) destroy
        end subroutine
        function OpenMM_CustomNonbondedForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumParticles
        end function
        function OpenMM_CustomNonbondedForce_getNumExclusions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumExclusions
        end function
        function OpenMM_CustomNonbondedForce_getNumPerParticleParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumPerParticleParameters
        end function
        function OpenMM_CustomNonbondedForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumGlobalParameters
        end function
        function OpenMM_CustomNonbondedForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumTabulatedFunctions
        end function
        function OpenMM_CustomNonbondedForce_getNumFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumFunctions
        end function
        function OpenMM_CustomNonbondedForce_getNumInteractionGroups(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumInteractionGroups
        end function
        function OpenMM_CustomNonbondedForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNumEnergyParameterDerivatives
        end function
        subroutine OpenMM_CustomNonbondedForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomNonbondedForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getNonbondedMethod
        end function
        subroutine OpenMM_CustomNonbondedForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 method
        end subroutine
        function OpenMM_CustomNonbondedForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            real*8 OpenMM_CustomNonbondedForce_getCutoffDistance
        end function
        subroutine OpenMM_CustomNonbondedForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            real*8 distance
        end subroutine
        function OpenMM_CustomNonbondedForce_getUseSwitchingFunction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getUseSwitchingFunction
        end function
        subroutine OpenMM_CustomNonbondedForce_setUseSwitchingFunction(target, use)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 use
        end subroutine
        function OpenMM_CustomNonbondedForce_getSwitchingDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            real*8 OpenMM_CustomNonbondedForce_getSwitchingDistance
        end function
        subroutine OpenMM_CustomNonbondedForce_setSwitchingDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            real*8 distance
        end subroutine
        function OpenMM_CustomNonbondedForce_getUseLongRangeCorrection(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_getUseLongRangeCorrection
        end function
        subroutine OpenMM_CustomNonbondedForce_setUseLongRangeCorrection(target, use)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 use
        end subroutine
        function OpenMM_CustomNonbondedForce_addPerParticleParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) name
            integer*4 OpenMM_CustomNonbondedForce_addPerParticleParameter
        end function
        subroutine OpenMM_CustomNonbondedForce_getPerParticleParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setPerParticleParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomNonbondedForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomNonbondedForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomNonbondedForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomNonbondedForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            real*8 OpenMM_CustomNonbondedForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomNonbondedForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomNonbondedForce_addParticle(target, parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomNonbondedForce_addParticle
        end function
        subroutine OpenMM_CustomNonbondedForce_getParticleParameters(target, index, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setParticleParameters(target, index, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomNonbondedForce_addExclusion(target, particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 OpenMM_CustomNonbondedForce_addExclusion
        end function
        subroutine OpenMM_CustomNonbondedForce_getExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_createExclusionsFromBonds(target, bonds, &
bondCutoff)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            type (OpenMM_BondArray) bonds
            integer*4 bondCutoff
        end subroutine
        function OpenMM_CustomNonbondedForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomNonbondedForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomNonbondedForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomNonbondedForce_addFunction(target, name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
            integer*4 OpenMM_CustomNonbondedForce_addFunction
        end function
        subroutine OpenMM_CustomNonbondedForce_getFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        function OpenMM_CustomNonbondedForce_addInteractionGroup(target, set1, &
set2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            type (OpenMM_IntSet) set1
            type (OpenMM_IntSet) set2
            integer*4 OpenMM_CustomNonbondedForce_addInteractionGroup
        end function
        subroutine OpenMM_CustomNonbondedForce_getInteractionGroupParameters(target, index, &
set1, &
set2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            type (OpenMM_IntSet) set1
            type (OpenMM_IntSet) set2
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_setInteractionGroupParameters(target, index, &
set1, &
set2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 index
            type (OpenMM_IntSet) set1
            type (OpenMM_IntSet) set2
        end subroutine
        subroutine OpenMM_CustomNonbondedForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomNonbondedForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomNonbondedForce) target
            integer*4 OpenMM_CustomNonbondedForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomAngleForce
        subroutine OpenMM_CustomAngleForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomAngleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) destroy
        end subroutine
        function OpenMM_CustomAngleForce_getNumAngles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 OpenMM_CustomAngleForce_getNumAngles
        end function
        function OpenMM_CustomAngleForce_getNumPerAngleParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 OpenMM_CustomAngleForce_getNumPerAngleParameters
        end function
        function OpenMM_CustomAngleForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 OpenMM_CustomAngleForce_getNumGlobalParameters
        end function
        function OpenMM_CustomAngleForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 OpenMM_CustomAngleForce_getNumEnergyParameterDerivatives
        end function
        subroutine OpenMM_CustomAngleForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomAngleForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomAngleForce_addPerAngleParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            character(*) name
            integer*4 OpenMM_CustomAngleForce_addPerAngleParameter
        end function
        subroutine OpenMM_CustomAngleForce_getPerAngleParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomAngleForce_setPerAngleParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomAngleForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomAngleForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomAngleForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomAngleForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomAngleForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            real*8 OpenMM_CustomAngleForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomAngleForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomAngleForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomAngleForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomAngleForce_addAngle(target, particle1, &
particle2, &
particle3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomAngleForce_addAngle
        end function
        subroutine OpenMM_CustomAngleForce_getAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomAngleForce_setAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomAngleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CustomAngleForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CustomAngleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomAngleForce) target
            integer*4 OpenMM_CustomAngleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::MonteCarloFlexibleBarostat
        subroutine OpenMM_MonteCarloFlexibleBarostat_create(result, defaultPressure, &
defaultTemperature, &
frequency, &
scaleMoleculesAsRigid)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) result
            real*8 defaultPressure
            real*8 defaultTemperature
            integer*4 frequency
            integer*4 scaleMoleculesAsRigid
        end subroutine
        subroutine OpenMM_MonteCarloFlexibleBarostat_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) destroy
        end subroutine
        subroutine OpenMM_MonteCarloFlexibleBarostat_Pressure(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloFlexibleBarostat_Temperature(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            character(*) result
        end subroutine
        function OpenMM_MonteCarloFlexibleBarostat_getDefaultPressure(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            real*8 OpenMM_MonteCarloFlexibleBarostat_getDefaultPressure
        end function
        subroutine OpenMM_MonteCarloFlexibleBarostat_setDefaultPressure(target, pressure)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            real*8 pressure
        end subroutine
        function OpenMM_MonteCarloFlexibleBarostat_getFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 OpenMM_MonteCarloFlexibleBarostat_getFrequency
        end function
        subroutine OpenMM_MonteCarloFlexibleBarostat_setFrequency(target, freq)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 freq
        end subroutine
        function OpenMM_MonteCarloFlexibleBarostat_getDefaultTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            real*8 OpenMM_MonteCarloFlexibleBarostat_getDefaultTemperature
        end function
        subroutine OpenMM_MonteCarloFlexibleBarostat_setDefaultTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            real*8 temp
        end subroutine
        function OpenMM_MonteCarloFlexibleBarostat_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 OpenMM_MonteCarloFlexibleBarostat_getRandomNumberSeed
        end function
        subroutine OpenMM_MonteCarloFlexibleBarostat_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 seed
        end subroutine
        function OpenMM_MonteCarloFlexibleBarostat_usesPeriodicBoundaryCondition(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 OpenMM_MonteCarloFlexibleBarostat_usesPeriodicBoundaryCondition
        end function
        function OpenMM_MonteCarloFlexibleBarostat_getScaleMoleculesAsRigid(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 OpenMM_MonteCarloFlexibleBarostat_getScaleMoleculesAsRigid
        end function
        subroutine OpenMM_MonteCarloFlexibleBarostat_setScaleMoleculesAsRigid(target, rigid)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloFlexibleBarostat) target
            integer*4 rigid
        end subroutine

        ! OpenMM::NoseHooverIntegrator
        subroutine OpenMM_NoseHooverIntegrator_create(result, stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) result
            real*8 stepSize
        end subroutine
        subroutine OpenMM_NoseHooverIntegrator_create_2(result, temperature, &
collisionFrequency, &
stepSize, &
chainLength, &
numMTS, &
numYoshidaSuzuki)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) result
            real*8 temperature
            real*8 collisionFrequency
            real*8 stepSize
            integer*4 chainLength
            integer*4 numMTS
            integer*4 numYoshidaSuzuki
        end subroutine
        subroutine OpenMM_NoseHooverIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) destroy
        end subroutine
        subroutine OpenMM_NoseHooverIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 steps
        end subroutine
        function OpenMM_NoseHooverIntegrator_addThermostat(target, temperature, &
collisionFrequency, &
chainLength, &
numMTS, &
numYoshidaSuzuki)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 temperature
            real*8 collisionFrequency
            integer*4 chainLength
            integer*4 numMTS
            integer*4 numYoshidaSuzuki
            integer*4 OpenMM_NoseHooverIntegrator_addThermostat
        end function
        function OpenMM_NoseHooverIntegrator_addSubsystemThermostat(target, thermostatedParticles, &
thermostatedPairs, &
temperature, &
collisionFrequency, &
relativeTemperature, &
relativeCollisionFrequency, &
chainLength, &
numMTS, &
numYoshidaSuzuki)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            type (OpenMM_IntArray) thermostatedParticles
            type (OpenMM_BondArray) thermostatedPairs
            real*8 temperature
            real*8 collisionFrequency
            real*8 relativeTemperature
            real*8 relativeCollisionFrequency
            integer*4 chainLength
            integer*4 numMTS
            integer*4 numYoshidaSuzuki
            integer*4 OpenMM_NoseHooverIntegrator_addSubsystemThermostat
        end function
        function OpenMM_NoseHooverIntegrator_getTemperature(target, chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 chainID
            real*8 OpenMM_NoseHooverIntegrator_getTemperature
        end function
        subroutine OpenMM_NoseHooverIntegrator_setTemperature(target, temperature, &
chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 temperature
            integer*4 chainID
        end subroutine
        function OpenMM_NoseHooverIntegrator_getRelativeTemperature(target, chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 chainID
            real*8 OpenMM_NoseHooverIntegrator_getRelativeTemperature
        end function
        subroutine OpenMM_NoseHooverIntegrator_setRelativeTemperature(target, temperature, &
chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 temperature
            integer*4 chainID
        end subroutine
        function OpenMM_NoseHooverIntegrator_getCollisionFrequency(target, chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 chainID
            real*8 OpenMM_NoseHooverIntegrator_getCollisionFrequency
        end function
        subroutine OpenMM_NoseHooverIntegrator_setCollisionFrequency(target, frequency, &
chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 frequency
            integer*4 chainID
        end subroutine
        function OpenMM_NoseHooverIntegrator_getRelativeCollisionFrequency(target, chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 chainID
            real*8 OpenMM_NoseHooverIntegrator_getRelativeCollisionFrequency
        end function
        subroutine OpenMM_NoseHooverIntegrator_setRelativeCollisionFrequency(target, frequency, &
chainID)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 frequency
            integer*4 chainID
        end subroutine
        function OpenMM_NoseHooverIntegrator_computeHeatBathEnergy(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 OpenMM_NoseHooverIntegrator_computeHeatBathEnergy
        end function
        function OpenMM_NoseHooverIntegrator_getNumThermostats(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 OpenMM_NoseHooverIntegrator_getNumThermostats
        end function
        subroutine OpenMM_NoseHooverIntegrator_getThermostat(target, chainID, result)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 chainID
            type (OpenMM_NoseHooverChain) result
        end subroutine
        function OpenMM_NoseHooverIntegrator_hasSubsystemThermostats(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            integer*4 OpenMM_NoseHooverIntegrator_hasSubsystemThermostats
        end function
        function OpenMM_NoseHooverIntegrator_getMaximumPairDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 OpenMM_NoseHooverIntegrator_getMaximumPairDistance
        end function
        subroutine OpenMM_NoseHooverIntegrator_setMaximumPairDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverIntegrator) target
            real*8 distance
        end subroutine

        ! OpenMM::NoseHooverChain
        subroutine OpenMM_NoseHooverChain_create(result, temperature, &
relativeTemperature, &
collisionFrequency, &
relativeCollisionFrequency, &
numDOFs, &
chainLength, &
numMTS, &
numYoshidaSuzuki, &
chainID, &
thermostatedAtoms, &
thermostatedPairs)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) result
            real*8 temperature
            real*8 relativeTemperature
            real*8 collisionFrequency
            real*8 relativeCollisionFrequency
            integer*4 numDOFs
            integer*4 chainLength
            integer*4 numMTS
            integer*4 numYoshidaSuzuki
            integer*4 chainID
            type (OpenMM_IntArray) thermostatedAtoms
            type (OpenMM_BondArray) thermostatedPairs
        end subroutine
        subroutine OpenMM_NoseHooverChain_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) destroy
        end subroutine
        function OpenMM_NoseHooverChain_getTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 OpenMM_NoseHooverChain_getTemperature
        end function
        subroutine OpenMM_NoseHooverChain_setTemperature(target, temperature)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 temperature
        end subroutine
        function OpenMM_NoseHooverChain_getRelativeTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 OpenMM_NoseHooverChain_getRelativeTemperature
        end function
        subroutine OpenMM_NoseHooverChain_setRelativeTemperature(target, temperature)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 temperature
        end subroutine
        function OpenMM_NoseHooverChain_getCollisionFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 OpenMM_NoseHooverChain_getCollisionFrequency
        end function
        subroutine OpenMM_NoseHooverChain_setCollisionFrequency(target, frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 frequency
        end subroutine
        function OpenMM_NoseHooverChain_getRelativeCollisionFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 OpenMM_NoseHooverChain_getRelativeCollisionFrequency
        end function
        subroutine OpenMM_NoseHooverChain_setRelativeCollisionFrequency(target, frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            real*8 frequency
        end subroutine
        function OpenMM_NoseHooverChain_getNumDegreesOfFreedom(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_getNumDegreesOfFreedom
        end function
        subroutine OpenMM_NoseHooverChain_setNumDegreesOfFreedom(target, numDOF)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 numDOF
        end subroutine
        function OpenMM_NoseHooverChain_getChainLength(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_getChainLength
        end function
        function OpenMM_NoseHooverChain_getNumMultiTimeSteps(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_getNumMultiTimeSteps
        end function
        function OpenMM_NoseHooverChain_getNumYoshidaSuzukiTimeSteps(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_getNumYoshidaSuzukiTimeSteps
        end function
        function OpenMM_NoseHooverChain_getChainID(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_getChainID
        end function
        subroutine OpenMM_NoseHooverChain_getThermostatedAtoms(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            type (OpenMM_IntArray) result
        end subroutine
        subroutine OpenMM_NoseHooverChain_setThermostatedAtoms(target, atomIDs)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            type (OpenMM_IntArray) atomIDs
        end subroutine
        subroutine OpenMM_NoseHooverChain_getThermostatedPairs(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            type (OpenMM_BondArray) result
        end subroutine
        subroutine OpenMM_NoseHooverChain_setThermostatedPairs(target, pairIDs)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            type (OpenMM_BondArray) pairIDs
        end subroutine
        function OpenMM_NoseHooverChain_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NoseHooverChain) target
            integer*4 OpenMM_NoseHooverChain_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::MonteCarloAnisotropicBarostat
        subroutine OpenMM_MonteCarloAnisotropicBarostat_create(result, defaultPressure, &
defaultTemperature, &
scaleX, &
scaleY, &
scaleZ, &
frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) result
            real*8 defaultPressure(3)
            real*8 defaultTemperature
            integer*4 scaleX
            integer*4 scaleY
            integer*4 scaleZ
            integer*4 frequency
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) destroy
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_PressureX(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_PressureY(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_PressureZ(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_Temperature(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_getDefaultPressure(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            real*8 result(3)
        end subroutine
        subroutine OpenMM_MonteCarloAnisotropicBarostat_setDefaultPressure(target, pressure)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            real*8 pressure(3)
        end subroutine
        function OpenMM_MonteCarloAnisotropicBarostat_getScaleX(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_getScaleX
        end function
        function OpenMM_MonteCarloAnisotropicBarostat_getScaleY(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_getScaleY
        end function
        function OpenMM_MonteCarloAnisotropicBarostat_getScaleZ(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_getScaleZ
        end function
        function OpenMM_MonteCarloAnisotropicBarostat_getFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_getFrequency
        end function
        subroutine OpenMM_MonteCarloAnisotropicBarostat_setFrequency(target, freq)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 freq
        end subroutine
        function OpenMM_MonteCarloAnisotropicBarostat_getDefaultTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            real*8 OpenMM_MonteCarloAnisotropicBarostat_getDefaultTemperature
        end function
        subroutine OpenMM_MonteCarloAnisotropicBarostat_setDefaultTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            real*8 temp
        end subroutine
        function OpenMM_MonteCarloAnisotropicBarostat_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_getRandomNumberSeed
        end function
        subroutine OpenMM_MonteCarloAnisotropicBarostat_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 seed
        end subroutine
        function OpenMM_MonteCarloAnisotropicBarostat_usesPeriodicBoundaryCondit(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloAnisotropicBarostat) target
            integer*4 OpenMM_MonteCarloAnisotropicBarostat_usesPeriodicBoundaryCondit
        end function

        ! OpenMM::NonbondedForce
        subroutine OpenMM_NonbondedForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) result
        end subroutine
        subroutine OpenMM_NonbondedForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) destroy
        end subroutine
        function OpenMM_NonbondedForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNumParticles
        end function
        function OpenMM_NonbondedForce_getNumExceptions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNumExceptions
        end function
        function OpenMM_NonbondedForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNumGlobalParameters
        end function
        function OpenMM_NonbondedForce_getNumParticleParameterOffsets(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNumParticleParameterOffsets
        end function
        function OpenMM_NonbondedForce_getNumExceptionParameterOffsets(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNumExceptionParameterOffsets
        end function
        function OpenMM_NonbondedForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getNonbondedMethod
        end function
        subroutine OpenMM_NonbondedForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 method
        end subroutine
        function OpenMM_NonbondedForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 OpenMM_NonbondedForce_getCutoffDistance
        end function
        subroutine OpenMM_NonbondedForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 distance
        end subroutine
        function OpenMM_NonbondedForce_getUseSwitchingFunction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getUseSwitchingFunction
        end function
        subroutine OpenMM_NonbondedForce_setUseSwitchingFunction(target, use)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 use
        end subroutine
        function OpenMM_NonbondedForce_getSwitchingDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 OpenMM_NonbondedForce_getSwitchingDistance
        end function
        subroutine OpenMM_NonbondedForce_setSwitchingDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 distance
        end subroutine
        function OpenMM_NonbondedForce_getReactionFieldDielectric(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 OpenMM_NonbondedForce_getReactionFieldDielectric
        end function
        subroutine OpenMM_NonbondedForce_setReactionFieldDielectric(target, dielectric)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 dielectric
        end subroutine
        function OpenMM_NonbondedForce_getEwaldErrorTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 OpenMM_NonbondedForce_getEwaldErrorTolerance
        end function
        subroutine OpenMM_NonbondedForce_setEwaldErrorTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 tol
        end subroutine
        subroutine OpenMM_NonbondedForce_getPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_NonbondedForce_getLJPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_NonbondedForce_setPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_NonbondedForce_setLJPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_NonbondedForce_getPMEParametersInContext(target, context, &
alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            type (OpenMM_Context) context
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_NonbondedForce_getLJPMEParametersInContext(target, context, &
alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            type (OpenMM_Context) context
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        function OpenMM_NonbondedForce_addParticle(target, charge, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            real*8 charge
            real*8 sigma
            real*8 epsilon
            integer*4 OpenMM_NonbondedForce_addParticle
        end function
        subroutine OpenMM_NonbondedForce_getParticleParameters(target, index, &
charge, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            real*8 charge
            real*8 sigma
            real*8 epsilon
        end subroutine
        subroutine OpenMM_NonbondedForce_setParticleParameters(target, index, &
charge, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            real*8 charge
            real*8 sigma
            real*8 epsilon
        end subroutine
        function OpenMM_NonbondedForce_addException(target, particle1, &
particle2, &
chargeProd, &
sigma, &
epsilon, &
replace)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 particle1
            integer*4 particle2
            real*8 chargeProd
            real*8 sigma
            real*8 epsilon
            integer*4 replace
            integer*4 OpenMM_NonbondedForce_addException
        end function
        subroutine OpenMM_NonbondedForce_getExceptionParameters(target, index, &
particle1, &
particle2, &
chargeProd, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 chargeProd
            real*8 sigma
            real*8 epsilon
        end subroutine
        subroutine OpenMM_NonbondedForce_setExceptionParameters(target, index, &
particle1, &
particle2, &
chargeProd, &
sigma, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 chargeProd
            real*8 sigma
            real*8 epsilon
        end subroutine
        subroutine OpenMM_NonbondedForce_createExceptionsFromBonds(target, bonds, &
coulomb14Scale, &
lj14Scale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            type (OpenMM_BondArray) bonds
            real*8 coulomb14Scale
            real*8 lj14Scale
        end subroutine
        function OpenMM_NonbondedForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_NonbondedForce_addGlobalParameter
        end function
        subroutine OpenMM_NonbondedForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_NonbondedForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_NonbondedForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            real*8 OpenMM_NonbondedForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_NonbondedForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        function OpenMM_NonbondedForce_addParticleParameterOffset(target, parameter, &
particleIndex, &
chargeScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            character(*) parameter
            integer*4 particleIndex
            real*8 chargeScale
            real*8 sigmaScale
            real*8 epsilonScale
            integer*4 OpenMM_NonbondedForce_addParticleParameterOffset
        end function
        subroutine OpenMM_NonbondedForce_getParticleParameterOffset(target, index, &
parameter, &
particleIndex, &
chargeScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) parameter
            integer*4 particleIndex
            real*8 chargeScale
            real*8 sigmaScale
            real*8 epsilonScale
        end subroutine
        subroutine OpenMM_NonbondedForce_setParticleParameterOffset(target, index, &
parameter, &
particleIndex, &
chargeScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) parameter
            integer*4 particleIndex
            real*8 chargeScale
            real*8 sigmaScale
            real*8 epsilonScale
        end subroutine
        function OpenMM_NonbondedForce_addExceptionParameterOffset(target, parameter, &
exceptionIndex, &
chargeProdScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            character(*) parameter
            integer*4 exceptionIndex
            real*8 chargeProdScale
            real*8 sigmaScale
            real*8 epsilonScale
            integer*4 OpenMM_NonbondedForce_addExceptionParameterOffset
        end function
        subroutine OpenMM_NonbondedForce_getExceptionParameterOffset(target, index, &
parameter, &
exceptionIndex, &
chargeProdScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) parameter
            integer*4 exceptionIndex
            real*8 chargeProdScale
            real*8 sigmaScale
            real*8 epsilonScale
        end subroutine
        subroutine OpenMM_NonbondedForce_setExceptionParameterOffset(target, index, &
parameter, &
exceptionIndex, &
chargeProdScale, &
sigmaScale, &
epsilonScale)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 index
            character(*) parameter
            integer*4 exceptionIndex
            real*8 chargeProdScale
            real*8 sigmaScale
            real*8 epsilonScale
        end subroutine
        function OpenMM_NonbondedForce_getUseDispersionCorrection(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getUseDispersionCorrection
        end function
        subroutine OpenMM_NonbondedForce_setUseDispersionCorrection(target, useCorrection)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 useCorrection
        end subroutine
        function OpenMM_NonbondedForce_getReciprocalSpaceForceGroup(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getReciprocalSpaceForceGroup
        end function
        subroutine OpenMM_NonbondedForce_setReciprocalSpaceForceGroup(target, group)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 group
        end subroutine
        function OpenMM_NonbondedForce_getIncludeDirectSpace(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getIncludeDirectSpace
        end function
        subroutine OpenMM_NonbondedForce_setIncludeDirectSpace(target, include)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 include
        end subroutine
        subroutine OpenMM_NonbondedForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_NonbondedForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_usesPeriodicBoundaryConditions
        end function
        function OpenMM_NonbondedForce_getExceptionsUsePeriodicBoundaryCondition(target)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 OpenMM_NonbondedForce_getExceptionsUsePeriodicBoundaryCondition
        end function
        subroutine OpenMM_NonbondedForce_setExceptionsUsePeriodicBoundaryCondition(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_NonbondedForce) target
            integer*4 periodic
        end subroutine

        ! OpenMM::LangevinIntegrator
        subroutine OpenMM_LangevinIntegrator_create(result, temperature, &
frictionCoeff, &
stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) result
            real*8 temperature
            real*8 frictionCoeff
            real*8 stepSize
        end subroutine
        subroutine OpenMM_LangevinIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) destroy
        end subroutine
        function OpenMM_LangevinIntegrator_getTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            real*8 OpenMM_LangevinIntegrator_getTemperature
        end function
        subroutine OpenMM_LangevinIntegrator_setTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            real*8 temp
        end subroutine
        function OpenMM_LangevinIntegrator_getFriction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            real*8 OpenMM_LangevinIntegrator_getFriction
        end function
        subroutine OpenMM_LangevinIntegrator_setFriction(target, coeff)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            real*8 coeff
        end subroutine
        function OpenMM_LangevinIntegrator_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            integer*4 OpenMM_LangevinIntegrator_getRandomNumberSeed
        end function
        subroutine OpenMM_LangevinIntegrator_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            integer*4 seed
        end subroutine
        subroutine OpenMM_LangevinIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::CustomHbondForce
        subroutine OpenMM_CustomHbondForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomHbondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) destroy
        end subroutine
        function OpenMM_CustomHbondForce_getNumDonors(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumDonors
        end function
        function OpenMM_CustomHbondForce_getNumAcceptors(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumAcceptors
        end function
        function OpenMM_CustomHbondForce_getNumExclusions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumExclusions
        end function
        function OpenMM_CustomHbondForce_getNumPerDonorParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumPerDonorParameters
        end function
        function OpenMM_CustomHbondForce_getNumPerAcceptorParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumPerAcceptorParameters
        end function
        function OpenMM_CustomHbondForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumGlobalParameters
        end function
        function OpenMM_CustomHbondForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumTabulatedFunctions
        end function
        function OpenMM_CustomHbondForce_getNumFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNumFunctions
        end function
        subroutine OpenMM_CustomHbondForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomHbondForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomHbondForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_getNonbondedMethod
        end function
        subroutine OpenMM_CustomHbondForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 method
        end subroutine
        function OpenMM_CustomHbondForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            real*8 OpenMM_CustomHbondForce_getCutoffDistance
        end function
        subroutine OpenMM_CustomHbondForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            real*8 distance
        end subroutine
        function OpenMM_CustomHbondForce_addPerDonorParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) name
            integer*4 OpenMM_CustomHbondForce_addPerDonorParameter
        end function
        subroutine OpenMM_CustomHbondForce_getPerDonorParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomHbondForce_setPerDonorParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomHbondForce_addPerAcceptorParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) name
            integer*4 OpenMM_CustomHbondForce_addPerAcceptorParameter
        end function
        subroutine OpenMM_CustomHbondForce_getPerAcceptorParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomHbondForce_setPerAcceptorParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomHbondForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomHbondForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomHbondForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomHbondForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomHbondForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            real*8 OpenMM_CustomHbondForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomHbondForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        function OpenMM_CustomHbondForce_addDonor(target, d1, &
d2, &
d3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 d1
            integer*4 d2
            integer*4 d3
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomHbondForce_addDonor
        end function
        subroutine OpenMM_CustomHbondForce_getDonorParameters(target, index, &
d1, &
d2, &
d3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 d1
            integer*4 d2
            integer*4 d3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomHbondForce_setDonorParameters(target, index, &
d1, &
d2, &
d3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 d1
            integer*4 d2
            integer*4 d3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomHbondForce_addAcceptor(target, a1, &
a2, &
a3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 a1
            integer*4 a2
            integer*4 a3
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomHbondForce_addAcceptor
        end function
        subroutine OpenMM_CustomHbondForce_getAcceptorParameters(target, index, &
a1, &
a2, &
a3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 a1
            integer*4 a2
            integer*4 a3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomHbondForce_setAcceptorParameters(target, index, &
a1, &
a2, &
a3, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 a1
            integer*4 a2
            integer*4 a3
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomHbondForce_addExclusion(target, donor, &
acceptor)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 donor
            integer*4 acceptor
            integer*4 OpenMM_CustomHbondForce_addExclusion
        end function
        subroutine OpenMM_CustomHbondForce_getExclusionParticles(target, index, &
donor, &
acceptor)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 donor
            integer*4 acceptor
        end subroutine
        subroutine OpenMM_CustomHbondForce_setExclusionParticles(target, index, &
donor, &
acceptor)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            integer*4 donor
            integer*4 acceptor
        end subroutine
        function OpenMM_CustomHbondForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomHbondForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomHbondForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomHbondForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomHbondForce_addFunction(target, name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
            integer*4 OpenMM_CustomHbondForce_addFunction
        end function
        subroutine OpenMM_CustomHbondForce_getFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomHbondForce_setFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomHbondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomHbondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomHbondForce) target
            integer*4 OpenMM_CustomHbondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::Discrete2DFunction
        subroutine OpenMM_Discrete2DFunction_create(result, xsize, &
ysize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete2DFunction) result
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete2DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete2DFunction) destroy
        end subroutine
        subroutine OpenMM_Discrete2DFunction_getFunctionParameters(target, xsize, &
ysize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete2DFunction) target
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete2DFunction_setFunctionParameters(target, xsize, &
ysize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete2DFunction) target
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete2DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete2DFunction) target
            type (OpenMM_Discrete2DFunction) result
        end subroutine

        ! OpenMM::BrownianIntegrator
        subroutine OpenMM_BrownianIntegrator_create(result, temperature, &
frictionCoeff, &
stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) result
            real*8 temperature
            real*8 frictionCoeff
            real*8 stepSize
        end subroutine
        subroutine OpenMM_BrownianIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) destroy
        end subroutine
        function OpenMM_BrownianIntegrator_getTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            real*8 OpenMM_BrownianIntegrator_getTemperature
        end function
        subroutine OpenMM_BrownianIntegrator_setTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            real*8 temp
        end subroutine
        function OpenMM_BrownianIntegrator_getFriction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            real*8 OpenMM_BrownianIntegrator_getFriction
        end function
        subroutine OpenMM_BrownianIntegrator_setFriction(target, coeff)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            real*8 coeff
        end subroutine
        function OpenMM_BrownianIntegrator_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            integer*4 OpenMM_BrownianIntegrator_getRandomNumberSeed
        end function
        subroutine OpenMM_BrownianIntegrator_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            integer*4 seed
        end subroutine
        subroutine OpenMM_BrownianIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_BrownianIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::CMAPTorsionForce
        subroutine OpenMM_CMAPTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) result
        end subroutine
        subroutine OpenMM_CMAPTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) destroy
        end subroutine
        function OpenMM_CMAPTorsionForce_getNumMaps(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 OpenMM_CMAPTorsionForce_getNumMaps
        end function
        function OpenMM_CMAPTorsionForce_getNumTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 OpenMM_CMAPTorsionForce_getNumTorsions
        end function
        function OpenMM_CMAPTorsionForce_addMap(target, size, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 size
            type (OpenMM_DoubleArray) energy
            integer*4 OpenMM_CMAPTorsionForce_addMap
        end function
        subroutine OpenMM_CMAPTorsionForce_getMapParameters(target, index, &
size, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 index
            integer*4 size
            type (OpenMM_DoubleArray) energy
        end subroutine
        subroutine OpenMM_CMAPTorsionForce_setMapParameters(target, index, &
size, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 index
            integer*4 size
            type (OpenMM_DoubleArray) energy
        end subroutine
        function OpenMM_CMAPTorsionForce_addTorsion(target, map, &
a1, &
a2, &
a3, &
a4, &
b1, &
b2, &
b3, &
b4)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 map
            integer*4 a1
            integer*4 a2
            integer*4 a3
            integer*4 a4
            integer*4 b1
            integer*4 b2
            integer*4 b3
            integer*4 b4
            integer*4 OpenMM_CMAPTorsionForce_addTorsion
        end function
        subroutine OpenMM_CMAPTorsionForce_getTorsionParameters(target, index, &
map, &
a1, &
a2, &
a3, &
a4, &
b1, &
b2, &
b3, &
b4)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 index
            integer*4 map
            integer*4 a1
            integer*4 a2
            integer*4 a3
            integer*4 a4
            integer*4 b1
            integer*4 b2
            integer*4 b3
            integer*4 b4
        end subroutine
        subroutine OpenMM_CMAPTorsionForce_setTorsionParameters(target, index, &
map, &
a1, &
a2, &
a3, &
a4, &
b1, &
b2, &
b3, &
b4)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 index
            integer*4 map
            integer*4 a1
            integer*4 a2
            integer*4 a3
            integer*4 a4
            integer*4 b1
            integer*4 b2
            integer*4 b3
            integer*4 b4
        end subroutine
        subroutine OpenMM_CMAPTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CMAPTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CMAPTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CMAPTorsionForce) target
            integer*4 OpenMM_CMAPTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::OutOfPlaneSite
        subroutine OpenMM_OutOfPlaneSite_create(result, particle1, &
particle2, &
particle3, &
weight12, &
weight13, &
weightCross)
            use OpenMM_Types; implicit none
            type (OpenMM_OutOfPlaneSite) result
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 weight12
            real*8 weight13
            real*8 weightCross
        end subroutine
        subroutine OpenMM_OutOfPlaneSite_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_OutOfPlaneSite) destroy
        end subroutine
        function OpenMM_OutOfPlaneSite_getWeight12(target)
            use OpenMM_Types; implicit none
            type (OpenMM_OutOfPlaneSite) target
            real*8 OpenMM_OutOfPlaneSite_getWeight12
        end function
        function OpenMM_OutOfPlaneSite_getWeight13(target)
            use OpenMM_Types; implicit none
            type (OpenMM_OutOfPlaneSite) target
            real*8 OpenMM_OutOfPlaneSite_getWeight13
        end function
        function OpenMM_OutOfPlaneSite_getWeightCross(target)
            use OpenMM_Types; implicit none
            type (OpenMM_OutOfPlaneSite) target
            real*8 OpenMM_OutOfPlaneSite_getWeightCross
        end function

        ! OpenMM::MonteCarloBarostat
        subroutine OpenMM_MonteCarloBarostat_create(result, defaultPressure, &
defaultTemperature, &
frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) result
            real*8 defaultPressure
            real*8 defaultTemperature
            integer*4 frequency
        end subroutine
        subroutine OpenMM_MonteCarloBarostat_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) destroy
        end subroutine
        subroutine OpenMM_MonteCarloBarostat_Pressure(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloBarostat_Temperature(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            character(*) result
        end subroutine
        function OpenMM_MonteCarloBarostat_getDefaultPressure(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            real*8 OpenMM_MonteCarloBarostat_getDefaultPressure
        end function
        subroutine OpenMM_MonteCarloBarostat_setDefaultPressure(target, pressure)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            real*8 pressure
        end subroutine
        function OpenMM_MonteCarloBarostat_getFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            integer*4 OpenMM_MonteCarloBarostat_getFrequency
        end function
        subroutine OpenMM_MonteCarloBarostat_setFrequency(target, freq)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            integer*4 freq
        end subroutine
        function OpenMM_MonteCarloBarostat_getDefaultTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            real*8 OpenMM_MonteCarloBarostat_getDefaultTemperature
        end function
        subroutine OpenMM_MonteCarloBarostat_setDefaultTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            real*8 temp
        end subroutine
        function OpenMM_MonteCarloBarostat_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            integer*4 OpenMM_MonteCarloBarostat_getRandomNumberSeed
        end function
        subroutine OpenMM_MonteCarloBarostat_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            integer*4 seed
        end subroutine
        function OpenMM_MonteCarloBarostat_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloBarostat) target
            integer*4 OpenMM_MonteCarloBarostat_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::VerletIntegrator
        subroutine OpenMM_VerletIntegrator_create(result, stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_VerletIntegrator) result
            real*8 stepSize
        end subroutine
        subroutine OpenMM_VerletIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_VerletIntegrator) destroy
        end subroutine
        subroutine OpenMM_VerletIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_VerletIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::LocalEnergyMinimizer
        subroutine OpenMM_LocalEnergyMinimizer_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalEnergyMinimizer) destroy
        end subroutine
        subroutine OpenMM_LocalEnergyMinimizer_minimize(context, &
tolerance, &
maxIterations)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalEnergyMinimizer) target
            type (OpenMM_Context) context
            real*8 tolerance
            integer*4 maxIterations
        end subroutine

        ! OpenMM::ThreeParticleAverageSite
        subroutine OpenMM_ThreeParticleAverageSite_create(result, particle1, &
particle2, &
particle3, &
weight1, &
weight2, &
weight3)
            use OpenMM_Types; implicit none
            type (OpenMM_ThreeParticleAverageSite) result
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 weight1
            real*8 weight2
            real*8 weight3
        end subroutine
        subroutine OpenMM_ThreeParticleAverageSite_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_ThreeParticleAverageSite) destroy
        end subroutine
        function OpenMM_ThreeParticleAverageSite_getWeight(target, particle)
            use OpenMM_Types; implicit none
            type (OpenMM_ThreeParticleAverageSite) target
            integer*4 particle
            real*8 OpenMM_ThreeParticleAverageSite_getWeight
        end function

        ! OpenMM::Continuous3DFunction
        subroutine OpenMM_Continuous3DFunction_create(result, xsize, &
ysize, &
zsize, &
values, &
xmin, &
xmax, &
ymin, &
ymax, &
zmin, &
zmax, &
periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous3DFunction) result
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
            real*8 zmin
            real*8 zmax
            integer*4 periodic
        end subroutine
        subroutine OpenMM_Continuous3DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous3DFunction) destroy
        end subroutine
        subroutine OpenMM_Continuous3DFunction_getFunctionParameters(target, xsize, &
ysize, &
zsize, &
values, &
xmin, &
xmax, &
ymin, &
ymax, &
zmin, &
zmax)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous3DFunction) target
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
            real*8 zmin
            real*8 zmax
        end subroutine
        subroutine OpenMM_Continuous3DFunction_setFunctionParameters(target, xsize, &
ysize, &
zsize, &
values, &
xmin, &
xmax, &
ymin, &
ymax, &
zmin, &
zmax)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous3DFunction) target
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
            real*8 zmin
            real*8 zmax
        end subroutine
        subroutine OpenMM_Continuous3DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous3DFunction) target
            type (OpenMM_Continuous3DFunction) result
        end subroutine

        ! OpenMM::Discrete1DFunction
        subroutine OpenMM_Discrete1DFunction_create(result, values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete1DFunction) result
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete1DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete1DFunction) destroy
        end subroutine
        subroutine OpenMM_Discrete1DFunction_getFunctionParameters(target, values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete1DFunction) target
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete1DFunction_setFunctionParameters(target, values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete1DFunction) target
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete1DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete1DFunction) target
            type (OpenMM_Discrete1DFunction) result
        end subroutine

        ! OpenMM::AndersenThermostat
        subroutine OpenMM_AndersenThermostat_create(result, defaultTemperature, &
defaultCollisionFrequency)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) result
            real*8 defaultTemperature
            real*8 defaultCollisionFrequency
        end subroutine
        subroutine OpenMM_AndersenThermostat_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) destroy
        end subroutine
        subroutine OpenMM_AndersenThermostat_Temperature(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_AndersenThermostat_CollisionFrequency(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            character(*) result
        end subroutine
        function OpenMM_AndersenThermostat_getDefaultTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            real*8 OpenMM_AndersenThermostat_getDefaultTemperature
        end function
        subroutine OpenMM_AndersenThermostat_setDefaultTemperature(target, temperature)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            real*8 temperature
        end subroutine
        function OpenMM_AndersenThermostat_getDefaultCollisionFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            real*8 OpenMM_AndersenThermostat_getDefaultCollisionFrequency
        end function
        subroutine OpenMM_AndersenThermostat_setDefaultCollisionFrequency(target, frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            real*8 frequency
        end subroutine
        function OpenMM_AndersenThermostat_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            integer*4 OpenMM_AndersenThermostat_getRandomNumberSeed
        end function
        subroutine OpenMM_AndersenThermostat_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            integer*4 seed
        end subroutine
        function OpenMM_AndersenThermostat_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AndersenThermostat) target
            integer*4 OpenMM_AndersenThermostat_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::Platform
        subroutine OpenMM_Platform_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) destroy
        end subroutine
        subroutine OpenMM_Platform_registerPlatform(platform)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_Platform) platform
        end subroutine
        function OpenMM_Platform_getNumPlatforms()
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            integer*4 OpenMM_Platform_getNumPlatforms
        end function
        subroutine OpenMM_Platform_getPlatform(index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            integer*4 index
            type (OpenMM_Platform) result
        end subroutine
        subroutine OpenMM_Platform_getPlatformByName(name, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) name
            type (OpenMM_Platform) result
        end subroutine
        subroutine OpenMM_Platform_findPlatform(kernelNames, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_StringArray) kernelNames
            type (OpenMM_Platform) result
        end subroutine
        subroutine OpenMM_Platform_loadPluginLibrary(file)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) file
        end subroutine
        subroutine OpenMM_Platform_getDefaultPluginsDirectory(result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) result
        end subroutine
        subroutine OpenMM_Platform_getOpenMMVersion(result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) result
        end subroutine
        subroutine OpenMM_Platform_getName(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) result
        end subroutine
        function OpenMM_Platform_getSpeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            real*8 OpenMM_Platform_getSpeed
        end function
        function OpenMM_Platform_supportsDoublePrecision(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            integer*4 OpenMM_Platform_supportsDoublePrecision
        end function
        subroutine OpenMM_Platform_getPropertyNames(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_StringArray) result
        end subroutine
        subroutine OpenMM_Platform_getPropertyValue(target, context, &
property, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_Context) context
            character(*) property
            character(*) result
        end subroutine
        subroutine OpenMM_Platform_setPropertyValue(target, context, &
property, &
value)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_Context) context
            character(*) property
            character(*) value
        end subroutine
        subroutine OpenMM_Platform_getPropertyDefaultValue(target, property, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) property
            character(*) result
        end subroutine
        subroutine OpenMM_Platform_setPropertyDefaultValue(target, property, &
value)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            character(*) property
            character(*) value
        end subroutine
        function OpenMM_Platform_supportsKernels(target, kernelNames)
            use OpenMM_Types; implicit none
            type (OpenMM_Platform) target
            type (OpenMM_StringArray) kernelNames
            integer*4 OpenMM_Platform_supportsKernels
        end function

        ! OpenMM::RBTorsionForce
        subroutine OpenMM_RBTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) result
        end subroutine
        subroutine OpenMM_RBTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) destroy
        end subroutine
        function OpenMM_RBTorsionForce_getNumTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 OpenMM_RBTorsionForce_getNumTorsions
        end function
        function OpenMM_RBTorsionForce_addTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
c0, &
c1, &
c2, &
c3, &
c4, &
c5)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 c0
            real*8 c1
            real*8 c2
            real*8 c3
            real*8 c4
            real*8 c5
            integer*4 OpenMM_RBTorsionForce_addTorsion
        end function
        subroutine OpenMM_RBTorsionForce_getTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
c0, &
c1, &
c2, &
c3, &
c4, &
c5)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 c0
            real*8 c1
            real*8 c2
            real*8 c3
            real*8 c4
            real*8 c5
        end subroutine
        subroutine OpenMM_RBTorsionForce_setTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
c0, &
c1, &
c2, &
c3, &
c4, &
c5)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 c0
            real*8 c1
            real*8 c2
            real*8 c3
            real*8 c4
            real*8 c5
        end subroutine
        subroutine OpenMM_RBTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_RBTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_RBTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_RBTorsionForce) target
            integer*4 OpenMM_RBTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::VariableLangevinIntegrator
        subroutine OpenMM_VariableLangevinIntegrator_create(result, temperature, &
frictionCoeff, &
errorTol)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) result
            real*8 temperature
            real*8 frictionCoeff
            real*8 errorTol
        end subroutine
        subroutine OpenMM_VariableLangevinIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) destroy
        end subroutine
        function OpenMM_VariableLangevinIntegrator_getTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 OpenMM_VariableLangevinIntegrator_getTemperature
        end function
        subroutine OpenMM_VariableLangevinIntegrator_setTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 temp
        end subroutine
        function OpenMM_VariableLangevinIntegrator_getFriction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 OpenMM_VariableLangevinIntegrator_getFriction
        end function
        subroutine OpenMM_VariableLangevinIntegrator_setFriction(target, coeff)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 coeff
        end subroutine
        function OpenMM_VariableLangevinIntegrator_getErrorTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 OpenMM_VariableLangevinIntegrator_getErrorTolerance
        end function
        subroutine OpenMM_VariableLangevinIntegrator_setErrorTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 tol
        end subroutine
        function OpenMM_VariableLangevinIntegrator_getMaximumStepSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 OpenMM_VariableLangevinIntegrator_getMaximumStepSize
        end function
        subroutine OpenMM_VariableLangevinIntegrator_setMaximumStepSize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 size
        end subroutine
        function OpenMM_VariableLangevinIntegrator_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            integer*4 OpenMM_VariableLangevinIntegrator_getRandomNumberSeed
        end function
        subroutine OpenMM_VariableLangevinIntegrator_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            integer*4 seed
        end subroutine
        subroutine OpenMM_VariableLangevinIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            integer*4 steps
        end subroutine
        subroutine OpenMM_VariableLangevinIntegrator_stepTo(target, time)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableLangevinIntegrator) target
            real*8 time
        end subroutine

        ! OpenMM::Continuous2DFunction
        subroutine OpenMM_Continuous2DFunction_create(result, xsize, &
ysize, &
values, &
xmin, &
xmax, &
ymin, &
ymax, &
periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous2DFunction) result
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
            integer*4 periodic
        end subroutine
        subroutine OpenMM_Continuous2DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous2DFunction) destroy
        end subroutine
        subroutine OpenMM_Continuous2DFunction_getFunctionParameters(target, xsize, &
ysize, &
values, &
xmin, &
xmax, &
ymin, &
ymax)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous2DFunction) target
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
        end subroutine
        subroutine OpenMM_Continuous2DFunction_setFunctionParameters(target, xsize, &
ysize, &
values, &
xmin, &
xmax, &
ymin, &
ymax)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous2DFunction) target
            integer*4 xsize
            integer*4 ysize
            type (OpenMM_DoubleArray) values
            real*8 xmin
            real*8 xmax
            real*8 ymin
            real*8 ymax
        end subroutine
        subroutine OpenMM_Continuous2DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous2DFunction) target
            type (OpenMM_Continuous2DFunction) result
        end subroutine

        ! OpenMM::LocalCoordinatesSite
        subroutine OpenMM_LocalCoordinatesSite_create(result, particles, &
originWeights, &
xWeights, &
yWeights, &
localPosition)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) result
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) originWeights
            type (OpenMM_DoubleArray) xWeights
            type (OpenMM_DoubleArray) yWeights
            real*8 localPosition(3)
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_create_2(result, particle1, &
particle2, &
particle3, &
originWeights, &
xWeights, &
yWeights, &
localPosition)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) result
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 originWeights(3)
            real*8 xWeights(3)
            real*8 yWeights(3)
            real*8 localPosition(3)
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) destroy
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_getOriginWeights(target, weights)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) target
            type (OpenMM_DoubleArray) weights
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_getXWeights(target, weights)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) target
            type (OpenMM_DoubleArray) weights
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_getYWeights(target, weights)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) target
            type (OpenMM_DoubleArray) weights
        end subroutine
        subroutine OpenMM_LocalCoordinatesSite_getLocalPosition(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_LocalCoordinatesSite) target
            real*8 result(3)
        end subroutine

        ! OpenMM::VariableVerletIntegrator
        subroutine OpenMM_VariableVerletIntegrator_create(result, errorTol)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) result
            real*8 errorTol
        end subroutine
        subroutine OpenMM_VariableVerletIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) destroy
        end subroutine
        function OpenMM_VariableVerletIntegrator_getErrorTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            real*8 OpenMM_VariableVerletIntegrator_getErrorTolerance
        end function
        subroutine OpenMM_VariableVerletIntegrator_setErrorTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            real*8 tol
        end subroutine
        function OpenMM_VariableVerletIntegrator_getMaximumStepSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            real*8 OpenMM_VariableVerletIntegrator_getMaximumStepSize
        end function
        subroutine OpenMM_VariableVerletIntegrator_setMaximumStepSize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            real*8 size
        end subroutine
        subroutine OpenMM_VariableVerletIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            integer*4 steps
        end subroutine
        subroutine OpenMM_VariableVerletIntegrator_stepTo(target, time)
            use OpenMM_Types; implicit none
            type (OpenMM_VariableVerletIntegrator) target
            real*8 time
        end subroutine

        ! OpenMM::Context
        subroutine OpenMM_Context_create(result, system, &
integrator)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) result
            type (OpenMM_System) system
            type (OpenMM_Integrator) integrator
        end subroutine
        subroutine OpenMM_Context_create_2(result, system, &
integrator, &
platform)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) result
            type (OpenMM_System) system
            type (OpenMM_Integrator) integrator
            type (OpenMM_Platform) platform
        end subroutine
        subroutine OpenMM_Context_create_3(result, system, &
integrator, &
platform, &
properties)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) result
            type (OpenMM_System) system
            type (OpenMM_Integrator) integrator
            type (OpenMM_Platform) platform
            type (OpenMM_PropertyArray) properties
        end subroutine
        subroutine OpenMM_Context_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) destroy
        end subroutine
        subroutine OpenMM_Context_getSystem(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_System) result
        end subroutine
        subroutine OpenMM_Context_getIntegrator(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_Integrator) result
        end subroutine
        subroutine OpenMM_Context_getPlatform(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_Platform) result
        end subroutine
        subroutine OpenMM_Context_setState(target, state)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_State) state
        end subroutine
        function OpenMM_Context_getTime(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 OpenMM_Context_getTime
        end function
        subroutine OpenMM_Context_setTime(target, time)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 time
        end subroutine
        subroutine OpenMM_Context_getStepCount(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            integer*8 result
        end subroutine
        subroutine OpenMM_Context_setStepCount(target, count)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            integer*8 count
        end subroutine
        subroutine OpenMM_Context_setPositions(target, positions)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_Vec3Array) positions
        end subroutine
        subroutine OpenMM_Context_setVelocities(target, velocities)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_Vec3Array) velocities
        end subroutine
        subroutine OpenMM_Context_setVelocitiesToTemperature(target, temperature, &
randomSeed)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 temperature
            integer*4 randomSeed
        end subroutine
        subroutine OpenMM_Context_getParameters(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            type (OpenMM_ParameterArray) result
        end subroutine
        function OpenMM_Context_getParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            character(*) name
            real*8 OpenMM_Context_getParameter
        end function
        subroutine OpenMM_Context_setParameter(target, name, &
value)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            character(*) name
            real*8 value
        end subroutine
        subroutine OpenMM_Context_setPeriodicBoxVectors(target, a, &
b, &
c)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 a(3)
            real*8 b(3)
            real*8 c(3)
        end subroutine
        subroutine OpenMM_Context_applyConstraints(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 tol
        end subroutine
        subroutine OpenMM_Context_applyVelocityConstraints(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            real*8 tol
        end subroutine
        subroutine OpenMM_Context_computeVirtualSites(target)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
        end subroutine
        subroutine OpenMM_Context_reinitialize(target, preserveState)
            use OpenMM_Types; implicit none
            type (OpenMM_Context) target
            integer*4 preserveState
        end subroutine

        ! OpenMM::CustomExternalForce
        subroutine OpenMM_CustomExternalForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomExternalForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) destroy
        end subroutine
        function OpenMM_CustomExternalForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 OpenMM_CustomExternalForce_getNumParticles
        end function
        function OpenMM_CustomExternalForce_getNumPerParticleParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 OpenMM_CustomExternalForce_getNumPerParticleParameters
        end function
        function OpenMM_CustomExternalForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 OpenMM_CustomExternalForce_getNumGlobalParameters
        end function
        subroutine OpenMM_CustomExternalForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomExternalForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomExternalForce_addPerParticleParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            character(*) name
            integer*4 OpenMM_CustomExternalForce_addPerParticleParameter
        end function
        subroutine OpenMM_CustomExternalForce_getPerParticleParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomExternalForce_setPerParticleParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomExternalForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomExternalForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomExternalForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomExternalForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomExternalForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            real*8 OpenMM_CustomExternalForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomExternalForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        function OpenMM_CustomExternalForce_addParticle(target, particle, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 particle
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomExternalForce_addParticle
        end function
        subroutine OpenMM_CustomExternalForce_getParticleParameters(target, index, &
particle, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            integer*4 particle
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomExternalForce_setParticleParameters(target, index, &
particle, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 index
            integer*4 particle
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomExternalForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomExternalForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomExternalForce) target
            integer*4 OpenMM_CustomExternalForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::PeriodicTorsionForce
        subroutine OpenMM_PeriodicTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) result
        end subroutine
        subroutine OpenMM_PeriodicTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) destroy
        end subroutine
        function OpenMM_PeriodicTorsionForce_getNumTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 OpenMM_PeriodicTorsionForce_getNumTorsions
        end function
        function OpenMM_PeriodicTorsionForce_addTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
periodicity, &
phase, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 periodicity
            real*8 phase
            real*8 k
            integer*4 OpenMM_PeriodicTorsionForce_addTorsion
        end function
        subroutine OpenMM_PeriodicTorsionForce_getTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
periodicity, &
phase, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 periodicity
            real*8 phase
            real*8 k
        end subroutine
        subroutine OpenMM_PeriodicTorsionForce_setTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
periodicity, &
phase, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 periodicity
            real*8 phase
            real*8 k
        end subroutine
        subroutine OpenMM_PeriodicTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_PeriodicTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_PeriodicTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_PeriodicTorsionForce) target
            integer*4 OpenMM_PeriodicTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::State
        subroutine OpenMM_State_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) result
        end subroutine
        subroutine OpenMM_State_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_State) destroy
        end subroutine
        function OpenMM_State_getTime(target)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            real*8 OpenMM_State_getTime
        end function
        subroutine OpenMM_State_getStepCount(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            integer*8 result
        end subroutine
        subroutine OpenMM_State_getPositions(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_Vec3Array) result
        end subroutine
        subroutine OpenMM_State_getVelocities(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_Vec3Array) result
        end subroutine
        subroutine OpenMM_State_getForces(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_Vec3Array) result
        end subroutine
        subroutine OpenMM_State_getVext_grid(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_DoubleArray) result
        end subroutine
        function OpenMM_State_getKineticEnergy(target)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            real*8 OpenMM_State_getKineticEnergy
        end function
        function OpenMM_State_getPotentialEnergy(target)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            real*8 OpenMM_State_getPotentialEnergy
        end function
        subroutine OpenMM_State_getPeriodicBoxVectors(target, a, &
b, &
c)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            real*8 a(3)
            real*8 b(3)
            real*8 c(3)
        end subroutine
        function OpenMM_State_getPeriodicBoxVolume(target)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            real*8 OpenMM_State_getPeriodicBoxVolume
        end function
        subroutine OpenMM_State_getParameters(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_ParameterArray) result
        end subroutine
        subroutine OpenMM_State_getEnergyParameterDerivatives(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            type (OpenMM_ParameterArray) result
        end subroutine
        function OpenMM_State_getDataTypes(target)
            use OpenMM_Types; implicit none
            type (OpenMM_State) target
            integer*4 OpenMM_State_getDataTypes
        end function

        ! OpenMM::LangevinMiddleIntegrator
        subroutine OpenMM_LangevinMiddleIntegrator_create(result, temperature, &
frictionCoeff, &
stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) result
            real*8 temperature
            real*8 frictionCoeff
            real*8 stepSize
        end subroutine
        subroutine OpenMM_LangevinMiddleIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) destroy
        end subroutine
        function OpenMM_LangevinMiddleIntegrator_getTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            real*8 OpenMM_LangevinMiddleIntegrator_getTemperature
        end function
        subroutine OpenMM_LangevinMiddleIntegrator_setTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            real*8 temp
        end subroutine
        function OpenMM_LangevinMiddleIntegrator_getFriction(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            real*8 OpenMM_LangevinMiddleIntegrator_getFriction
        end function
        subroutine OpenMM_LangevinMiddleIntegrator_setFriction(target, coeff)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            real*8 coeff
        end subroutine
        function OpenMM_LangevinMiddleIntegrator_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            integer*4 OpenMM_LangevinMiddleIntegrator_getRandomNumberSeed
        end function
        subroutine OpenMM_LangevinMiddleIntegrator_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            integer*4 seed
        end subroutine
        subroutine OpenMM_LangevinMiddleIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_LangevinMiddleIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::MonteCarloMembraneBarostat
        subroutine OpenMM_MonteCarloMembraneBarostat_create(result, defaultPressure, &
defaultSurfaceTension, &
defaultTemperature, &
xymode, &
zmode, &
frequency)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) result
            real*8 defaultPressure
            real*8 defaultSurfaceTension
            real*8 defaultTemperature
            integer*4 xymode
            integer*4 zmode
            integer*4 frequency
        end subroutine
        subroutine OpenMM_MonteCarloMembraneBarostat_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) destroy
        end subroutine
        subroutine OpenMM_MonteCarloMembraneBarostat_Pressure(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloMembraneBarostat_SurfaceTension(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            character(*) result
        end subroutine
        subroutine OpenMM_MonteCarloMembraneBarostat_Temperature(result)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            character(*) result
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getDefaultPressure(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 OpenMM_MonteCarloMembraneBarostat_getDefaultPressure
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setDefaultPressure(target, pressure)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 pressure
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getDefaultSurfaceTension(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 OpenMM_MonteCarloMembraneBarostat_getDefaultSurfaceTension
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setDefaultSurfaceTension(target, surfaceTension)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 surfaceTension
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getFrequency(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 OpenMM_MonteCarloMembraneBarostat_getFrequency
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setFrequency(target, freq)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 freq
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getDefaultTemperature(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 OpenMM_MonteCarloMembraneBarostat_getDefaultTemperature
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setDefaultTemperature(target, temp)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            real*8 temp
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getXYMode(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 OpenMM_MonteCarloMembraneBarostat_getXYMode
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setXYMode(target, mode)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 mode
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getZMode(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 OpenMM_MonteCarloMembraneBarostat_getZMode
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setZMode(target, mode)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 mode
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 OpenMM_MonteCarloMembraneBarostat_getRandomNumberSeed
        end function
        subroutine OpenMM_MonteCarloMembraneBarostat_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 seed
        end subroutine
        function OpenMM_MonteCarloMembraneBarostat_usesPeriodicBoundaryCondition(target)
            use OpenMM_Types; implicit none
            type (OpenMM_MonteCarloMembraneBarostat) target
            integer*4 OpenMM_MonteCarloMembraneBarostat_usesPeriodicBoundaryCondition
        end function

        ! OpenMM::CustomTorsionForce
        subroutine OpenMM_CustomTorsionForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) destroy
        end subroutine
        function OpenMM_CustomTorsionForce_getNumTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 OpenMM_CustomTorsionForce_getNumTorsions
        end function
        function OpenMM_CustomTorsionForce_getNumPerTorsionParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 OpenMM_CustomTorsionForce_getNumPerTorsionParameters
        end function
        function OpenMM_CustomTorsionForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 OpenMM_CustomTorsionForce_getNumGlobalParameters
        end function
        function OpenMM_CustomTorsionForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 OpenMM_CustomTorsionForce_getNumEnergyParameterDerivatives
        end function
        subroutine OpenMM_CustomTorsionForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomTorsionForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomTorsionForce_addPerTorsionParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            character(*) name
            integer*4 OpenMM_CustomTorsionForce_addPerTorsionParameter
        end function
        subroutine OpenMM_CustomTorsionForce_getPerTorsionParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomTorsionForce_setPerTorsionParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomTorsionForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomTorsionForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomTorsionForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomTorsionForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomTorsionForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            real*8 OpenMM_CustomTorsionForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomTorsionForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomTorsionForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomTorsionForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomTorsionForce_addTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomTorsionForce_addTorsion
        end function
        subroutine OpenMM_CustomTorsionForce_getTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomTorsionForce_setTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CustomTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CustomTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomTorsionForce) target
            integer*4 OpenMM_CustomTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CompoundIntegrator
        subroutine OpenMM_CompoundIntegrator_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) result
        end subroutine
        subroutine OpenMM_CompoundIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) destroy
        end subroutine
        function OpenMM_CompoundIntegrator_getNumIntegrators(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            integer*4 OpenMM_CompoundIntegrator_getNumIntegrators
        end function
        function OpenMM_CompoundIntegrator_addIntegrator(target, integrator)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            type (OpenMM_Integrator) integrator
            integer*4 OpenMM_CompoundIntegrator_addIntegrator
        end function
        subroutine OpenMM_CompoundIntegrator_getIntegrator(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            integer*4 index
            type (OpenMM_Integrator) result
        end subroutine
        function OpenMM_CompoundIntegrator_getCurrentIntegrator(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            integer*4 OpenMM_CompoundIntegrator_getCurrentIntegrator
        end function
        subroutine OpenMM_CompoundIntegrator_setCurrentIntegrator(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            integer*4 index
        end subroutine
        function OpenMM_CompoundIntegrator_getStepSize(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            real*8 OpenMM_CompoundIntegrator_getStepSize
        end function
        subroutine OpenMM_CompoundIntegrator_setStepSize(target, size)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            real*8 size
        end subroutine
        function OpenMM_CompoundIntegrator_getConstraintTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            real*8 OpenMM_CompoundIntegrator_getConstraintTolerance
        end function
        subroutine OpenMM_CompoundIntegrator_setConstraintTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            real*8 tol
        end subroutine
        subroutine OpenMM_CompoundIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_CompoundIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::CustomGBForce
        subroutine OpenMM_CustomGBForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) result
        end subroutine
        subroutine OpenMM_CustomGBForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) destroy
        end subroutine
        function OpenMM_CustomGBForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumParticles
        end function
        function OpenMM_CustomGBForce_getNumExclusions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumExclusions
        end function
        function OpenMM_CustomGBForce_getNumPerParticleParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumPerParticleParameters
        end function
        function OpenMM_CustomGBForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumGlobalParameters
        end function
        function OpenMM_CustomGBForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumEnergyParameterDerivatives
        end function
        function OpenMM_CustomGBForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumTabulatedFunctions
        end function
        function OpenMM_CustomGBForce_getNumFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumFunctions
        end function
        function OpenMM_CustomGBForce_getNumComputedValues(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumComputedValues
        end function
        function OpenMM_CustomGBForce_getNumEnergyTerms(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNumEnergyTerms
        end function
        function OpenMM_CustomGBForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_getNonbondedMethod
        end function
        subroutine OpenMM_CustomGBForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 method
        end subroutine
        function OpenMM_CustomGBForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            real*8 OpenMM_CustomGBForce_getCutoffDistance
        end function
        subroutine OpenMM_CustomGBForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            real*8 distance
        end subroutine
        function OpenMM_CustomGBForce_addPerParticleParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
            integer*4 OpenMM_CustomGBForce_addPerParticleParameter
        end function
        subroutine OpenMM_CustomGBForce_getPerParticleParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomGBForce_setPerParticleParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomGBForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomGBForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomGBForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomGBForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomGBForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            real*8 OpenMM_CustomGBForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomGBForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomGBForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomGBForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomGBForce_addParticle(target, parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomGBForce_addParticle
        end function
        subroutine OpenMM_CustomGBForce_getParticleParameters(target, index, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomGBForce_setParticleParameters(target, index, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomGBForce_addComputedValue(target, name, &
expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
            character(*) expression
            integer*4 type
            integer*4 OpenMM_CustomGBForce_addComputedValue
        end function
        subroutine OpenMM_CustomGBForce_getComputedValueParameters(target, index, &
name, &
expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
            character(*) expression
            integer*4 type
        end subroutine
        subroutine OpenMM_CustomGBForce_setComputedValueParameters(target, index, &
name, &
expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
            character(*) expression
            integer*4 type
        end subroutine
        function OpenMM_CustomGBForce_addEnergyTerm(target, expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) expression
            integer*4 type
            integer*4 OpenMM_CustomGBForce_addEnergyTerm
        end function
        subroutine OpenMM_CustomGBForce_getEnergyTermParameters(target, index, &
expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) expression
            integer*4 type
        end subroutine
        subroutine OpenMM_CustomGBForce_setEnergyTermParameters(target, index, &
expression, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) expression
            integer*4 type
        end subroutine
        function OpenMM_CustomGBForce_addExclusion(target, particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 OpenMM_CustomGBForce_addExclusion
        end function
        subroutine OpenMM_CustomGBForce_getExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_CustomGBForce_setExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        function OpenMM_CustomGBForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomGBForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomGBForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomGBForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomGBForce_addFunction(target, name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
            integer*4 OpenMM_CustomGBForce_addFunction
        end function
        subroutine OpenMM_CustomGBForce_getFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomGBForce_setFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomGBForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomGBForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomGBForce) target
            integer*4 OpenMM_CustomGBForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::HarmonicAngleForce
        subroutine OpenMM_HarmonicAngleForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) result
        end subroutine
        subroutine OpenMM_HarmonicAngleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) destroy
        end subroutine
        function OpenMM_HarmonicAngleForce_getNumAngles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 OpenMM_HarmonicAngleForce_getNumAngles
        end function
        function OpenMM_HarmonicAngleForce_addAngle(target, particle1, &
particle2, &
particle3, &
angle, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 angle
            real*8 k
            integer*4 OpenMM_HarmonicAngleForce_addAngle
        end function
        subroutine OpenMM_HarmonicAngleForce_getAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
angle, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 angle
            real*8 k
        end subroutine
        subroutine OpenMM_HarmonicAngleForce_setAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
angle, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 angle
            real*8 k
        end subroutine
        subroutine OpenMM_HarmonicAngleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_HarmonicAngleForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_HarmonicAngleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_HarmonicAngleForce) target
            integer*4 OpenMM_HarmonicAngleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomCVForce
        subroutine OpenMM_CustomCVForce_create(result, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) result
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomCVForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) destroy
        end subroutine
        function OpenMM_CustomCVForce_getNumCollectiveVariables(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 OpenMM_CustomCVForce_getNumCollectiveVariables
        end function
        function OpenMM_CustomCVForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 OpenMM_CustomCVForce_getNumGlobalParameters
        end function
        function OpenMM_CustomCVForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 OpenMM_CustomCVForce_getNumEnergyParameterDerivatives
        end function
        function OpenMM_CustomCVForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 OpenMM_CustomCVForce_getNumTabulatedFunctions
        end function
        subroutine OpenMM_CustomCVForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCVForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomCVForce_addCollectiveVariable(target, name, &
variable)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) name
            type (OpenMM_Force) variable
            integer*4 OpenMM_CustomCVForce_addCollectiveVariable
        end function
        subroutine OpenMM_CustomCVForce_getCollectiveVariableName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCVForce_getCollectiveVariable(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            type (OpenMM_Force) result
        end subroutine
        function OpenMM_CustomCVForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomCVForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomCVForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCVForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomCVForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            real*8 OpenMM_CustomCVForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomCVForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomCVForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomCVForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomCVForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomCVForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomCVForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomCVForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCVForce_getCollectiveVariableValues(target, context, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            type (OpenMM_Context) context
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_CustomCVForce_getInnerContext(target, context, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            type (OpenMM_Context) context
            type (OpenMM_Context) result
        end subroutine
        subroutine OpenMM_CustomCVForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomCVForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCVForce) target
            integer*4 OpenMM_CustomCVForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomIntegrator
        subroutine OpenMM_CustomIntegrator_create(result, stepSize)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) result
            real*8 stepSize
        end subroutine
        subroutine OpenMM_CustomIntegrator_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) destroy
        end subroutine
        function OpenMM_CustomIntegrator_getNumGlobalVariables(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_getNumGlobalVariables
        end function
        function OpenMM_CustomIntegrator_getNumPerDofVariables(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_getNumPerDofVariables
        end function
        function OpenMM_CustomIntegrator_getNumComputations(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_getNumComputations
        end function
        function OpenMM_CustomIntegrator_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_getNumTabulatedFunctions
        end function
        function OpenMM_CustomIntegrator_addGlobalVariable(target, name, &
initialValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            real*8 initialValue
            integer*4 OpenMM_CustomIntegrator_addGlobalVariable
        end function
        subroutine OpenMM_CustomIntegrator_getGlobalVariableName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomIntegrator_addPerDofVariable(target, name, &
initialValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            real*8 initialValue
            integer*4 OpenMM_CustomIntegrator_addPerDofVariable
        end function
        subroutine OpenMM_CustomIntegrator_getPerDofVariableName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomIntegrator_getGlobalVariable(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            real*8 OpenMM_CustomIntegrator_getGlobalVariable
        end function
        function OpenMM_CustomIntegrator_getGlobalVariableByName(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            real*8 OpenMM_CustomIntegrator_getGlobalVariableByName
        end function
        subroutine OpenMM_CustomIntegrator_setGlobalVariable(target, index, &
value)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            real*8 value
        end subroutine
        subroutine OpenMM_CustomIntegrator_setGlobalVariableByName(target, name, &
value)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            real*8 value
        end subroutine
        subroutine OpenMM_CustomIntegrator_getPerDofVariable(target, index, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            type (OpenMM_Vec3Array) values
        end subroutine
        subroutine OpenMM_CustomIntegrator_getPerDofVariableByName(target, name, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            type (OpenMM_Vec3Array) values
        end subroutine
        subroutine OpenMM_CustomIntegrator_setPerDofVariable(target, index, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            type (OpenMM_Vec3Array) values
        end subroutine
        subroutine OpenMM_CustomIntegrator_setPerDofVariableByName(target, name, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            type (OpenMM_Vec3Array) values
        end subroutine
        function OpenMM_CustomIntegrator_addComputeGlobal(target, variable, &
expression)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) variable
            character(*) expression
            integer*4 OpenMM_CustomIntegrator_addComputeGlobal
        end function
        function OpenMM_CustomIntegrator_addComputePerDof(target, variable, &
expression)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) variable
            character(*) expression
            integer*4 OpenMM_CustomIntegrator_addComputePerDof
        end function
        function OpenMM_CustomIntegrator_addComputeSum(target, variable, &
expression)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) variable
            character(*) expression
            integer*4 OpenMM_CustomIntegrator_addComputeSum
        end function
        function OpenMM_CustomIntegrator_addConstrainPositions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_addConstrainPositions
        end function
        function OpenMM_CustomIntegrator_addConstrainVelocities(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_addConstrainVelocities
        end function
        function OpenMM_CustomIntegrator_addUpdateContextState(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_addUpdateContextState
        end function
        function OpenMM_CustomIntegrator_beginIfBlock(target, condition)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) condition
            integer*4 OpenMM_CustomIntegrator_beginIfBlock
        end function
        function OpenMM_CustomIntegrator_beginWhileBlock(target, condition)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) condition
            integer*4 OpenMM_CustomIntegrator_beginWhileBlock
        end function
        function OpenMM_CustomIntegrator_endBlock(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_endBlock
        end function
        subroutine OpenMM_CustomIntegrator_getComputationStep(target, index, &
type, &
variable, &
expression)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            integer*4 type
            character(*) variable
            character(*) expression
        end subroutine
        function OpenMM_CustomIntegrator_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomIntegrator_addTabulatedFunction
        end function
        subroutine OpenMM_CustomIntegrator_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomIntegrator_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomIntegrator_getKineticEnergyExpression(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomIntegrator_setKineticEnergyExpression(target, expression)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            character(*) expression
        end subroutine
        function OpenMM_CustomIntegrator_getRandomNumberSeed(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 OpenMM_CustomIntegrator_getRandomNumberSeed
        end function
        subroutine OpenMM_CustomIntegrator_setRandomNumberSeed(target, seed)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 seed
        end subroutine
        subroutine OpenMM_CustomIntegrator_step(target, steps)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomIntegrator) target
            integer*4 steps
        end subroutine

        ! OpenMM::GBSAOBCForce
        subroutine OpenMM_GBSAOBCForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) result
        end subroutine
        subroutine OpenMM_GBSAOBCForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) destroy
        end subroutine
        function OpenMM_GBSAOBCForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 OpenMM_GBSAOBCForce_getNumParticles
        end function
        function OpenMM_GBSAOBCForce_addParticle(target, charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 charge
            real*8 radius
            real*8 scalingFactor
            integer*4 OpenMM_GBSAOBCForce_addParticle
        end function
        subroutine OpenMM_GBSAOBCForce_getParticleParameters(target, index, &
charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 index
            real*8 charge
            real*8 radius
            real*8 scalingFactor
        end subroutine
        subroutine OpenMM_GBSAOBCForce_setParticleParameters(target, index, &
charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 index
            real*8 charge
            real*8 radius
            real*8 scalingFactor
        end subroutine
        function OpenMM_GBSAOBCForce_getSolventDielectric(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 OpenMM_GBSAOBCForce_getSolventDielectric
        end function
        subroutine OpenMM_GBSAOBCForce_setSolventDielectric(target, dielectric)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 dielectric
        end subroutine
        function OpenMM_GBSAOBCForce_getSoluteDielectric(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 OpenMM_GBSAOBCForce_getSoluteDielectric
        end function
        subroutine OpenMM_GBSAOBCForce_setSoluteDielectric(target, dielectric)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 dielectric
        end subroutine
        function OpenMM_GBSAOBCForce_getSurfaceAreaEnergy(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 OpenMM_GBSAOBCForce_getSurfaceAreaEnergy
        end function
        subroutine OpenMM_GBSAOBCForce_setSurfaceAreaEnergy(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 energy
        end subroutine
        function OpenMM_GBSAOBCForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 OpenMM_GBSAOBCForce_getNonbondedMethod
        end function
        subroutine OpenMM_GBSAOBCForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 method
        end subroutine
        function OpenMM_GBSAOBCForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 OpenMM_GBSAOBCForce_getCutoffDistance
        end function
        subroutine OpenMM_GBSAOBCForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            real*8 distance
        end subroutine
        subroutine OpenMM_GBSAOBCForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_GBSAOBCForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_GBSAOBCForce) target
            integer*4 OpenMM_GBSAOBCForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::Discrete3DFunction
        subroutine OpenMM_Discrete3DFunction_create(result, xsize, &
ysize, &
zsize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete3DFunction) result
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete3DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete3DFunction) destroy
        end subroutine
        subroutine OpenMM_Discrete3DFunction_getFunctionParameters(target, xsize, &
ysize, &
zsize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete3DFunction) target
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete3DFunction_setFunctionParameters(target, xsize, &
ysize, &
zsize, &
values)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete3DFunction) target
            integer*4 xsize
            integer*4 ysize
            integer*4 zsize
            type (OpenMM_DoubleArray) values
        end subroutine
        subroutine OpenMM_Discrete3DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Discrete3DFunction) target
            type (OpenMM_Discrete3DFunction) result
        end subroutine

        ! OpenMM::CustomManyParticleForce
        subroutine OpenMM_CustomManyParticleForce_create(result, particlesPerSet, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) result
            integer*4 particlesPerSet
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) destroy
        end subroutine
        function OpenMM_CustomManyParticleForce_getNumParticlesPerSet(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumParticlesPerSet
        end function
        function OpenMM_CustomManyParticleForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumParticles
        end function
        function OpenMM_CustomManyParticleForce_getNumExclusions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumExclusions
        end function
        function OpenMM_CustomManyParticleForce_getNumPerParticleParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumPerParticleParameters
        end function
        function OpenMM_CustomManyParticleForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumGlobalParameters
        end function
        function OpenMM_CustomManyParticleForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNumTabulatedFunctions
        end function
        subroutine OpenMM_CustomManyParticleForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomManyParticleForce_getNonbondedMethod(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getNonbondedMethod
        end function
        subroutine OpenMM_CustomManyParticleForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 method
        end subroutine
        function OpenMM_CustomManyParticleForce_getPermutationMode(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_getPermutationMode
        end function
        subroutine OpenMM_CustomManyParticleForce_setPermutationMode(target, mode)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 mode
        end subroutine
        function OpenMM_CustomManyParticleForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            real*8 OpenMM_CustomManyParticleForce_getCutoffDistance
        end function
        subroutine OpenMM_CustomManyParticleForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            real*8 distance
        end subroutine
        function OpenMM_CustomManyParticleForce_addPerParticleParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            character(*) name
            integer*4 OpenMM_CustomManyParticleForce_addPerParticleParameter
        end function
        subroutine OpenMM_CustomManyParticleForce_getPerParticleParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setPerParticleParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomManyParticleForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomManyParticleForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomManyParticleForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomManyParticleForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            real*8 OpenMM_CustomManyParticleForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomManyParticleForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        function OpenMM_CustomManyParticleForce_addParticle(target, parameters, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            type (OpenMM_DoubleArray) parameters
            integer*4 type
            integer*4 OpenMM_CustomManyParticleForce_addParticle
        end function
        subroutine OpenMM_CustomManyParticleForce_getParticleParameters(target, index, &
parameters, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
            integer*4 type
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setParticleParameters(target, index, &
parameters, &
type)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            type (OpenMM_DoubleArray) parameters
            integer*4 type
        end subroutine
        function OpenMM_CustomManyParticleForce_addExclusion(target, particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 OpenMM_CustomManyParticleForce_addExclusion
        end function
        subroutine OpenMM_CustomManyParticleForce_getExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setExclusionParticles(target, index, &
particle1, &
particle2)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_createExclusionsFromBonds(target, bonds, &
bondCutoff)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            type (OpenMM_BondArray) bonds
            integer*4 bondCutoff
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_getTypeFilter(target, index, &
types)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            type (OpenMM_IntSet) types
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_setTypeFilter(target, index, &
types)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            type (OpenMM_IntSet) types
        end subroutine
        function OpenMM_CustomManyParticleForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomManyParticleForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomManyParticleForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomManyParticleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_CustomManyParticleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomManyParticleForce) target
            integer*4 OpenMM_CustomManyParticleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::OpenMMException
        subroutine OpenMM_OpenMMException_create(result, message)
            use OpenMM_Types; implicit none
            type (OpenMM_OpenMMException) result
            character(*) message
        end subroutine
        subroutine OpenMM_OpenMMException_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_OpenMMException) destroy
        end subroutine
        subroutine OpenMM_OpenMMException_what(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_OpenMMException) target
            character(*) result
        end subroutine

        ! OpenMM::RMSDForce
        subroutine OpenMM_RMSDForce_create(result, referencePositions, &
particles)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) result
            type (OpenMM_Vec3Array) referencePositions
            type (OpenMM_IntArray) particles
        end subroutine
        subroutine OpenMM_RMSDForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) destroy
        end subroutine
        subroutine OpenMM_RMSDForce_getReferencePositions(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            type (OpenMM_Vec3Array) result
        end subroutine
        subroutine OpenMM_RMSDForce_setReferencePositions(target, positions)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            type (OpenMM_Vec3Array) positions
        end subroutine
        subroutine OpenMM_RMSDForce_getParticles(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            type (OpenMM_IntArray) result
        end subroutine
        subroutine OpenMM_RMSDForce_setParticles(target, particles)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            type (OpenMM_IntArray) particles
        end subroutine
        subroutine OpenMM_RMSDForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            type (OpenMM_Context) context
        end subroutine
        function OpenMM_RMSDForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_RMSDForce) target
            integer*4 OpenMM_RMSDForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::CustomCompoundBondForce
        subroutine OpenMM_CustomCompoundBondForce_create(result, numParticles, &
energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) result
            integer*4 numParticles
            character(*) energy
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) destroy
        end subroutine
        function OpenMM_CustomCompoundBondForce_getNumParticlesPerBond(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumParticlesPerBond
        end function
        function OpenMM_CustomCompoundBondForce_getNumBonds(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumBonds
        end function
        function OpenMM_CustomCompoundBondForce_getNumPerBondParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumPerBondParameters
        end function
        function OpenMM_CustomCompoundBondForce_getNumGlobalParameters(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumGlobalParameters
        end function
        function OpenMM_CustomCompoundBondForce_getNumEnergyParameterDerivatives(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumEnergyParameterDerivatives
        end function
        function OpenMM_CustomCompoundBondForce_getNumTabulatedFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumTabulatedFunctions
        end function
        function OpenMM_CustomCompoundBondForce_getNumFunctions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_getNumFunctions
        end function
        subroutine OpenMM_CustomCompoundBondForce_getEnergyFunction(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setEnergyFunction(target, energy)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) energy
        end subroutine
        function OpenMM_CustomCompoundBondForce_addPerBondParameter(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) name
            integer*4 OpenMM_CustomCompoundBondForce_addPerBondParameter
        end function
        subroutine OpenMM_CustomCompoundBondForce_getPerBondParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setPerBondParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomCompoundBondForce_addGlobalParameter(target, name, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) name
            real*8 defaultValue
            integer*4 OpenMM_CustomCompoundBondForce_addGlobalParameter
        end function
        subroutine OpenMM_CustomCompoundBondForce_getGlobalParameterName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setGlobalParameterName(target, index, &
name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) name
        end subroutine
        function OpenMM_CustomCompoundBondForce_getGlobalParameterDefaultValue(target, index)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            real*8 OpenMM_CustomCompoundBondForce_getGlobalParameterDefaultValue
        end function
        subroutine OpenMM_CustomCompoundBondForce_setGlobalParameterDefaultValue(target, index, &
defaultValue)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            real*8 defaultValue
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_addEnergyParameterDerivative(target, name)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) name
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_getEnergyParameterDerivativeName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomCompoundBondForce_addBond(target, particles, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) parameters
            integer*4 OpenMM_CustomCompoundBondForce_addBond
        end function
        subroutine OpenMM_CustomCompoundBondForce_getBondParameters(target, index, &
particles, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) parameters
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setBondParameters(target, index, &
particles, &
parameters)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            type (OpenMM_IntArray) particles
            type (OpenMM_DoubleArray) parameters
        end subroutine
        function OpenMM_CustomCompoundBondForce_addTabulatedFunction(target, name, &
function)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) name
            type (OpenMM_TabulatedFunction) function
            integer*4 OpenMM_CustomCompoundBondForce_addTabulatedFunction
        end function
        subroutine OpenMM_CustomCompoundBondForce_getTabulatedFunction(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            type (OpenMM_TabulatedFunction) result
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_getTabulatedFunctionName(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) result
        end subroutine
        function OpenMM_CustomCompoundBondForce_addFunction(target, name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
            integer*4 OpenMM_CustomCompoundBondForce_addFunction
        end function
        subroutine OpenMM_CustomCompoundBondForce_getFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setFunctionParameters(target, index, &
name, &
values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 index
            character(*) name
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            type (OpenMM_Context) context
        end subroutine
        subroutine OpenMM_CustomCompoundBondForce_setUsesPeriodicBoundaryCondition(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_CustomCompoundBondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_CustomCompoundBondForce) target
            integer*4 OpenMM_CustomCompoundBondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::Continuous1DFunction
        subroutine OpenMM_Continuous1DFunction_create(result, values, &
min, &
max, &
periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous1DFunction) result
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
            integer*4 periodic
        end subroutine
        subroutine OpenMM_Continuous1DFunction_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous1DFunction) destroy
        end subroutine
        subroutine OpenMM_Continuous1DFunction_getFunctionParameters(target, values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous1DFunction) target
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_Continuous1DFunction_setFunctionParameters(target, values, &
min, &
max)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous1DFunction) target
            type (OpenMM_DoubleArray) values
            real*8 min
            real*8 max
        end subroutine
        subroutine OpenMM_Continuous1DFunction_Copy(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_Continuous1DFunction) target
            type (OpenMM_Continuous1DFunction) result
        end subroutine


    end interface

contains

    subroutine OpenMM_XmlSerializer_serializeSystem(system, result)
        use iso_c_binding, only: c_ptr, c_int, c_char, c_f_pointer
        type(OpenMM_System), intent(in) :: system
        character(len=1), allocatable, dimension(:), intent(out) :: result

        character(kind=c_char), pointer, dimension(:) :: fstr
        type(c_ptr) :: cstr
        integer :: i
        integer(kind=c_int) :: result_length

        call OpenMM_XmlSerializer_serializeSystemToC(system, cstr, result_length)
        call c_f_pointer(cstr, fstr, [ result_length ])
        allocate(character(len=1) :: result(result_length))
        do i=1,result_length
           result(i) = fstr(i)
        end do
    end subroutine

    subroutine OpenMM_XmlSerializer_serializeState(state, result)
        use iso_c_binding, only: c_ptr, c_int, c_char, c_f_pointer
        type(OpenMM_State), intent(in) :: state
        character(len=1), allocatable, dimension(:), intent(out) :: result

        character(kind=c_char), pointer, dimension(:) :: fstr
        type(c_ptr) :: cstr
        integer :: i
        integer(kind=c_int) :: result_length

        call OpenMM_XmlSerializer_serializeStateToC(state, cstr, result_length)
        call c_f_pointer(cstr, fstr, [ result_length ])
        allocate(character(len=1) :: result(result_length))
        do i=1,result_length
           result(i) = fstr(i)
        end do
    end subroutine

    subroutine OpenMM_XmlSerializer_serializeIntegrator(integrator, result)
        use iso_c_binding, only: c_ptr, c_int, c_char, c_f_pointer
        type(OpenMM_Integrator), intent(in) :: integrator
        character(len=1), allocatable, dimension(:), intent(out) :: result

        character(kind=c_char), pointer, dimension(:) :: fstr
        type(c_ptr) :: cstr
        integer :: i
        integer(kind=c_int) :: result_length

        call OpenMM_XmlSerializer_serializeIntegratorToC(integrator, cstr, result_length)
        call c_f_pointer(cstr, fstr, [ result_length ])
        allocate(character(len=1) :: result(result_length))
        do i=1,result_length
           result(i) = fstr(i)
        end do
    end subroutine

END MODULE OpenMM
