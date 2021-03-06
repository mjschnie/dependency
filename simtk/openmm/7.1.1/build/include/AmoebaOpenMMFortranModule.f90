
MODULE OpenMM_Types
    implicit none

    ! Global Constants


    ! Type Declarations

    type OpenMM_AmoebaAngleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaAngleTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaBondForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaGeneralizedKirkwoodForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaInPlaneAngleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaMultipoleForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaOutOfPlaneBendForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaPiTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaStretchBendForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaStretchTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaTorsionTorsionForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaVdwForce
        integer*8 :: handle = 0
    end type

    type OpenMM_AmoebaWcaDispersionForce
        integer*8 :: handle = 0
    end type

    ! Enumerations

    integer*4, parameter :: OpenMM_False = 0
    integer*4, parameter :: OpenMM_True = 1
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_PME = 1
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Mutual = 0
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Direct = 1
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Extrapolated = 2
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_ZThenX = 0
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Bisector = 1
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_ZBisect = 2
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_ThreeFold = 3
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_ZOnly = 4
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_NoAxisType = 5
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_LastAxisTypeIndex = 6
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Covalent12 = 0
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Covalent13 = 1
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Covalent14 = 2
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_Covalent15 = 3
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_PolarizationCovalent11 = 4
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_PolarizationCovalent12 = 5
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_PolarizationCovalent13 = 6
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_PolarizationCovalent14 = 7
    integer*4, parameter :: OpenMM_AmoebaMultipoleForce_CovalentEnd = 8

    integer*4, parameter :: OpenMM_AmoebaVdwForce_NoCutoff = 0
    integer*4, parameter :: OpenMM_AmoebaVdwForce_CutoffPeriodic = 1


END MODULE OpenMM_Types

MODULE OpenMM
    use OpenMM_Types; implicit none
    interface


        ! OpenMM::AmoebaAngleForce
        subroutine OpenMM_AmoebaAngleForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) result
        end subroutine
        subroutine OpenMM_AmoebaAngleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) destroy
        end subroutine
        function OpenMM_AmoebaAngleForce_getNumAngles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 OpenMM_AmoebaAngleForce_getNumAngles
        end function
        subroutine OpenMM_AmoebaAngleForce_setAmoebaGlobalAngleCubic(target, cubicK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 cubicK
        end subroutine
        function OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleCubic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleCubic
        end function
        subroutine OpenMM_AmoebaAngleForce_setAmoebaGlobalAngleQuartic(target, quarticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 quarticK
        end subroutine
        function OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleQuartic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleQuartic
        end function
        subroutine OpenMM_AmoebaAngleForce_setAmoebaGlobalAnglePentic(target, penticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 penticK
        end subroutine
        function OpenMM_AmoebaAngleForce_getAmoebaGlobalAnglePentic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 OpenMM_AmoebaAngleForce_getAmoebaGlobalAnglePentic
        end function
        subroutine OpenMM_AmoebaAngleForce_setAmoebaGlobalAngleSextic(target, sexticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 sexticK
        end subroutine
        function OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleSextic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            real*8 OpenMM_AmoebaAngleForce_getAmoebaGlobalAngleSextic
        end function
        function OpenMM_AmoebaAngleForce_addAngle(target, particle1, &
particle2, &
particle3, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 length
            real*8 quadraticK
            integer*4 OpenMM_AmoebaAngleForce_addAngle
        end function
        subroutine OpenMM_AmoebaAngleForce_getAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaAngleForce_setAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaAngleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaAngleForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaAngleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleForce) target
            integer*4 OpenMM_AmoebaAngleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaAngleTorsionForce
        subroutine OpenMM_AmoebaAngleTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) result
        end subroutine
        subroutine OpenMM_AmoebaAngleTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) destroy
        end subroutine
        function OpenMM_AmoebaAngleTorsionForce_getNumAngleTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            integer*4 OpenMM_AmoebaAngleTorsionForce_getNumAngleTorsions
        end function
        function OpenMM_AmoebaAngleTorsionForce_addAngleTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
angleCBA, &
angleDCB, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 angleCBA
            real*8 angleDCB
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
            integer*4 OpenMM_AmoebaAngleTorsionForce_addAngleTorsion
        end function
        subroutine OpenMM_AmoebaAngleTorsionForce_getAngleTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
angleCBA, &
angleDCB, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 angleCBA
            real*8 angleDCB
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
        end subroutine
        subroutine OpenMM_AmoebaAngleTorsionForce_setAngleTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
angleCBA, &
angleDCB, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 angleCBA
            real*8 angleDCB
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
        end subroutine
        subroutine OpenMM_AmoebaAngleTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaAngleTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaAngleTorsionForce) target
            integer*4 OpenMM_AmoebaAngleTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaBondForce
        subroutine OpenMM_AmoebaBondForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) result
        end subroutine
        subroutine OpenMM_AmoebaBondForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) destroy
        end subroutine
        function OpenMM_AmoebaBondForce_getNumBonds(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 OpenMM_AmoebaBondForce_getNumBonds
        end function
        subroutine OpenMM_AmoebaBondForce_setAmoebaGlobalBondCubic(target, cubicK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            real*8 cubicK
        end subroutine
        function OpenMM_AmoebaBondForce_getAmoebaGlobalBondCubic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            real*8 OpenMM_AmoebaBondForce_getAmoebaGlobalBondCubic
        end function
        subroutine OpenMM_AmoebaBondForce_setAmoebaGlobalBondQuartic(target, quarticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            real*8 quarticK
        end subroutine
        function OpenMM_AmoebaBondForce_getAmoebaGlobalBondQuartic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            real*8 OpenMM_AmoebaBondForce_getAmoebaGlobalBondQuartic
        end function
        function OpenMM_AmoebaBondForce_addBond(target, particle1, &
particle2, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 quadraticK
            integer*4 OpenMM_AmoebaBondForce_addBond
        end function
        subroutine OpenMM_AmoebaBondForce_getBondParameters(target, index, &
particle1, &
particle2, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaBondForce_setBondParameters(target, index, &
particle1, &
particle2, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaBondForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaBondForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaBondForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaBondForce) target
            integer*4 OpenMM_AmoebaBondForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaGeneralizedKirkwoodForce
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) result
        end subroutine
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) destroy
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 OpenMM_AmoebaGeneralizedKirkwoodForce_getNumParticles
        end function
        function OpenMM_AmoebaGeneralizedKirkwoodForce_addParticle(target, charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 charge
            real*8 radius
            real*8 scalingFactor
            integer*4 OpenMM_AmoebaGeneralizedKirkwoodForce_addParticle
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_getParticleParameters(target, index, &
charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 index
            real*8 charge
            real*8 radius
            real*8 scalingFactor
        end subroutine
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setParticleParameters(target, index, &
charge, &
radius, &
scalingFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 index
            real*8 charge
            real*8 radius
            real*8 scalingFactor
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getSolventDielectric(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 OpenMM_AmoebaGeneralizedKirkwoodForce_getSolventDielectric
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setSolventDielectric(target, dielectric)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 dielectric
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getSoluteDielectric(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 OpenMM_AmoebaGeneralizedKirkwoodForce_getSoluteDielectric
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setSoluteDielectric(target, dielectric)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 dielectric
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getIncludeCavityTerm(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 OpenMM_AmoebaGeneralizedKirkwoodForce_getIncludeCavityTerm
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setIncludeCavityTerm(target, includeCavityTerm)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 includeCavityTerm
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getProbeRadius(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 OpenMM_AmoebaGeneralizedKirkwoodForce_getProbeRadius
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setProbeRadius(target, probeRadius)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 probeRadius
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_getSurfaceAreaFactor(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 OpenMM_AmoebaGeneralizedKirkwoodForce_getSurfaceAreaFactor
        end function
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_setSurfaceAreaFactor(target, surfaceAreaFactor)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            real*8 surfaceAreaFactor
        end subroutine
        subroutine OpenMM_AmoebaGeneralizedKirkwoodForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaGeneralizedKirkwoodForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaGeneralizedKirkwoodForce) target
            integer*4 OpenMM_AmoebaGeneralizedKirkwoodForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaInPlaneAngleForce
        subroutine OpenMM_AmoebaInPlaneAngleForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) result
        end subroutine
        subroutine OpenMM_AmoebaInPlaneAngleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) destroy
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_getNumAngles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 OpenMM_AmoebaInPlaneAngleForce_getNumAngles
        end function
        subroutine OpenMM_AmoebaInPlaneAngleForce_setAmoebaGlobalInPlaneAngleCubic(target, cubicK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 cubicK
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleCubic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleCubic
        end function
        subroutine OpenMM_AmoebaInPlaneAngleForce_setAmoebaGlobalInPlaneAngleQuartic(target, quarticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 quarticK
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleQuartic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleQuartic
        end function
        subroutine OpenMM_AmoebaInPlaneAngleForce_setAmoebaGlobalInPlaneAnglePentic(target, penticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 penticK
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAnglePentic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAnglePentic
        end function
        subroutine OpenMM_AmoebaInPlaneAngleForce_setAmoebaGlobalInPlaneAngleSextic(target, sexticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 sexticK
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleSextic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            real*8 OpenMM_AmoebaInPlaneAngleForce_getAmoebaGlobalInPlaneAngleSextic
        end function
        function OpenMM_AmoebaInPlaneAngleForce_addAngle(target, particle1, &
particle2, &
particle3, &
particle4, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 length
            real*8 quadraticK
            integer*4 OpenMM_AmoebaInPlaneAngleForce_addAngle
        end function
        subroutine OpenMM_AmoebaInPlaneAngleForce_getAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaInPlaneAngleForce_setAngleParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
length, &
quadraticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 length
            real*8 quadraticK
        end subroutine
        subroutine OpenMM_AmoebaInPlaneAngleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaInPlaneAngleForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaInPlaneAngleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaInPlaneAngleForce) target
            integer*4 OpenMM_AmoebaInPlaneAngleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaMultipoleForce
        subroutine OpenMM_AmoebaMultipoleForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) result
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) destroy
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getNumMultipoles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 OpenMM_AmoebaMultipoleForce_getNumMultipoles
        end function
        subroutine OpenMM_AmoebaMultipoleForce_getNonbondedMethod(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_AmoebaVdwForce_NonbondedMethod) result
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_AmoebaVdwForce_NonbondedMethod) method
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getPolarizationType(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_AmoebaMultipoleForce_PolarizationType) result
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setPolarizationType(target, type)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_AmoebaMultipoleForce_PolarizationType) type
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 OpenMM_AmoebaMultipoleForce_getCutoffDistance
        end function
        subroutine OpenMM_AmoebaMultipoleForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 distance
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setPMEParameters(target, alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getAEwald(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 OpenMM_AmoebaMultipoleForce_getAEwald
        end function
        subroutine OpenMM_AmoebaMultipoleForce_setAEwald(target, aewald)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 aewald
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getPmeBSplineOrder(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 OpenMM_AmoebaMultipoleForce_getPmeBSplineOrder
        end function
        subroutine OpenMM_AmoebaMultipoleForce_getPmeGridDimensions(target, gridDimension)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_IntArray) gridDimension
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setPmeGridDimensions(target, gridDimension)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_IntArray) gridDimension
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getPMEParametersInContext(target, context, &
alpha, &
nx, &
ny, &
nz)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
            real*8 alpha
            integer*4 nx
            integer*4 ny
            integer*4 nz
        end subroutine
        function OpenMM_AmoebaMultipoleForce_addMultipole(target, charge, &
molecularDipole, &
molecularQuadrupole, &
axisType, &
multipoleAtomZ, &
multipoleAtomX, &
multipoleAtomY, &
thole, &
dampingFactor, &
polarity)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 charge
            type (OpenMM_DoubleArray) molecularDipole
            type (OpenMM_DoubleArray) molecularQuadrupole
            integer*4 axisType
            integer*4 multipoleAtomZ
            integer*4 multipoleAtomX
            integer*4 multipoleAtomY
            real*8 thole
            real*8 dampingFactor
            real*8 polarity
            integer*4 OpenMM_AmoebaMultipoleForce_addMultipole
        end function
        subroutine OpenMM_AmoebaMultipoleForce_getMultipoleParameters(target, index, &
charge, &
molecularDipole, &
molecularQuadrupole, &
axisType, &
multipoleAtomZ, &
multipoleAtomX, &
multipoleAtomY, &
thole, &
dampingFactor, &
polarity)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 index
            real*8 charge
            type (OpenMM_DoubleArray) molecularDipole
            type (OpenMM_DoubleArray) molecularQuadrupole
            integer*4 axisType
            integer*4 multipoleAtomZ
            integer*4 multipoleAtomX
            integer*4 multipoleAtomY
            real*8 thole
            real*8 dampingFactor
            real*8 polarity
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setMultipoleParameters(target, index, &
charge, &
molecularDipole, &
molecularQuadrupole, &
axisType, &
multipoleAtomZ, &
multipoleAtomX, &
multipoleAtomY, &
thole, &
dampingFactor, &
polarity)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 index
            real*8 charge
            type (OpenMM_DoubleArray) molecularDipole
            type (OpenMM_DoubleArray) molecularQuadrupole
            integer*4 axisType
            integer*4 multipoleAtomZ
            integer*4 multipoleAtomX
            integer*4 multipoleAtomY
            real*8 thole
            real*8 dampingFactor
            real*8 polarity
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setCovalentMap(target, index, &
typeId, &
covalentAtoms)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 index
            type (OpenMM_AmoebaMultipoleForce_CovalentType) typeId
            type (OpenMM_IntArray) covalentAtoms
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getCovalentMap(target, index, &
typeId, &
covalentAtoms)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 index
            type (OpenMM_AmoebaMultipoleForce_CovalentType) typeId
            type (OpenMM_IntArray) covalentAtoms
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getCovalentMaps(target, index, &
covalentLists)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 index
            std::vector< std::vector< int > > covalentLists
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getMutualInducedMaxIterations(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 OpenMM_AmoebaMultipoleForce_getMutualInducedMaxIterations
        end function
        subroutine OpenMM_AmoebaMultipoleForce_setMutualInducedMaxIterations(target, inputMutualInducedMaxIterations)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 inputMutualInducedMaxIterations
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getMutualInducedTargetEpsilon(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 OpenMM_AmoebaMultipoleForce_getMutualInducedTargetEpsilon
        end function
        subroutine OpenMM_AmoebaMultipoleForce_setMutualInducedTargetEpsilon(target, inputMutualInducedTargetEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 inputMutualInducedTargetEpsilon
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_setExtrapolationCoefficients(target, coefficients)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_DoubleArray) coefficients
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getExtrapolationCoefficients(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_DoubleArray) result
        end subroutine
        function OpenMM_AmoebaMultipoleForce_getEwaldErrorTolerance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 OpenMM_AmoebaMultipoleForce_getEwaldErrorTolerance
        end function
        subroutine OpenMM_AmoebaMultipoleForce_setEwaldErrorTolerance(target, tol)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            real*8 tol
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getLabFramePermanentDipoles(target, context, &
dipoles)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
            type (OpenMM_Vec3Array) dipoles
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getInducedDipoles(target, context, &
dipoles)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
            type (OpenMM_Vec3Array) dipoles
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getTotalDipoles(target, context, &
dipoles)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
            type (OpenMM_Vec3Array) dipoles
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getElectrostaticPotential(target, inputGrid, &
context, &
outputElectrostaticPotential)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            type (OpenMM_Vec3Array) inputGrid
            Context context
            type (OpenMM_DoubleArray) outputElectrostaticPotential
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_getSystemMultipoleMoments(target, context, &
outputMultipoleMoments)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
            type (OpenMM_DoubleArray) outputMultipoleMoments
        end subroutine
        subroutine OpenMM_AmoebaMultipoleForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaMultipoleForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaMultipoleForce) target
            integer*4 OpenMM_AmoebaMultipoleForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaOutOfPlaneBendForce
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) result
        end subroutine
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) destroy
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_getNumOutOfPlaneBends(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 OpenMM_AmoebaOutOfPlaneBendForce_getNumOutOfPlaneBends
        end function
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setAmoebaGlobalOutOfPlaneBendCubic(target, cubicK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 cubicK
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendCubic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendCubic
        end function
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setAmoebaGlobalOutOfPlaneBendQuartic(target, quarticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 quarticK
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendQuartic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendQuartic
        end function
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setAmoebaGlobalOutOfPlaneBendPentic(target, penticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 penticK
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendPentic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendPentic
        end function
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setAmoebaGlobalOutOfPlaneBendSextic(target, sexticK)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 sexticK
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendSextic(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            real*8 OpenMM_AmoebaOutOfPlaneBendForce_getAmoebaGlobalOutOfPlaneBendSextic
        end function
        function OpenMM_AmoebaOutOfPlaneBendForce_addOutOfPlaneBend(target, particle1, &
particle2, &
particle3, &
particle4, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 k
            integer*4 OpenMM_AmoebaOutOfPlaneBendForce_addOutOfPlaneBend
        end function
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_getOutOfPlaneBendParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 k
        end subroutine
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setOutOfPlaneBendParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 k
        end subroutine
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaOutOfPlaneBendForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaOutOfPlaneBendForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaOutOfPlaneBendForce) target
            integer*4 OpenMM_AmoebaOutOfPlaneBendForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaPiTorsionForce
        subroutine OpenMM_AmoebaPiTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) result
        end subroutine
        subroutine OpenMM_AmoebaPiTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) destroy
        end subroutine
        function OpenMM_AmoebaPiTorsionForce_getNumPiTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 OpenMM_AmoebaPiTorsionForce_getNumPiTorsions
        end function
        function OpenMM_AmoebaPiTorsionForce_addPiTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
particle6, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 particle6
            real*8 k
            integer*4 OpenMM_AmoebaPiTorsionForce_addPiTorsion
        end function
        subroutine OpenMM_AmoebaPiTorsionForce_getPiTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
particle6, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 particle6
            real*8 k
        end subroutine
        subroutine OpenMM_AmoebaPiTorsionForce_setPiTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
particle6, &
k)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 particle6
            real*8 k
        end subroutine
        subroutine OpenMM_AmoebaPiTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaPiTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaPiTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaPiTorsionForce) target
            integer*4 OpenMM_AmoebaPiTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaStretchBendForce
        subroutine OpenMM_AmoebaStretchBendForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) result
        end subroutine
        subroutine OpenMM_AmoebaStretchBendForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) destroy
        end subroutine
        function OpenMM_AmoebaStretchBendForce_getNumStretchBends(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 OpenMM_AmoebaStretchBendForce_getNumStretchBends
        end function
        function OpenMM_AmoebaStretchBendForce_addStretchBend(target, particle1, &
particle2, &
particle3, &
lengthAB, &
lengthCB, &
angle, &
k1, &
k2)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 lengthAB
            real*8 lengthCB
            real*8 angle
            real*8 k1
            real*8 k2
            integer*4 OpenMM_AmoebaStretchBendForce_addStretchBend
        end function
        subroutine OpenMM_AmoebaStretchBendForce_getStretchBendParameters(target, index, &
particle1, &
particle2, &
particle3, &
lengthAB, &
lengthCB, &
angle, &
k1, &
k2)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 lengthAB
            real*8 lengthCB
            real*8 angle
            real*8 k1
            real*8 k2
        end subroutine
        subroutine OpenMM_AmoebaStretchBendForce_setStretchBendParameters(target, index, &
particle1, &
particle2, &
particle3, &
lengthAB, &
lengthCB, &
angle, &
k1, &
k2)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            real*8 lengthAB
            real*8 lengthCB
            real*8 angle
            real*8 k1
            real*8 k2
        end subroutine
        subroutine OpenMM_AmoebaStretchBendForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            Context context
        end subroutine
        subroutine OpenMM_AmoebaStretchBendForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaStretchBendForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchBendForce) target
            integer*4 OpenMM_AmoebaStretchBendForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaStretchTorsionForce
        subroutine OpenMM_AmoebaStretchTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) result
        end subroutine
        subroutine OpenMM_AmoebaStretchTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) destroy
        end subroutine
        function OpenMM_AmoebaStretchTorsionForce_getNumStretchTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            integer*4 OpenMM_AmoebaStretchTorsionForce_getNumStretchTorsions
        end function
        function OpenMM_AmoebaStretchTorsionForce_addStretchTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
lengthBA, &
lengthCB, &
lengthDC, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6, &
k7, &
k8, &
k9)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 lengthBA
            real*8 lengthCB
            real*8 lengthDC
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
            real*8 k7
            real*8 k8
            real*8 k9
            integer*4 OpenMM_AmoebaStretchTorsionForce_addStretchTorsion
        end function
        subroutine OpenMM_AmoebaStretchTorsionForce_getStretchTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
lengthBA, &
lengthCB, &
lengthDC, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6, &
k7, &
k8, &
k9)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 lengthBA
            real*8 lengthCB
            real*8 lengthDC
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
            real*8 k7
            real*8 k8
            real*8 k9
        end subroutine
        subroutine OpenMM_AmoebaStretchTorsionForce_setStretchTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
lengthBA, &
lengthCB, &
lengthDC, &
k1, &
k2, &
k3, &
k4, &
k5, &
k6, &
k7, &
k8, &
k9)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            real*8 lengthBA
            real*8 lengthCB
            real*8 lengthDC
            real*8 k1
            real*8 k2
            real*8 k3
            real*8 k4
            real*8 k5
            real*8 k6
            real*8 k7
            real*8 k8
            real*8 k9
        end subroutine
        subroutine OpenMM_AmoebaStretchTorsionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaStretchTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaStretchTorsionForce) target
            integer*4 OpenMM_AmoebaStretchTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaTorsionTorsionForce
        subroutine OpenMM_AmoebaTorsionTorsionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) result
        end subroutine
        subroutine OpenMM_AmoebaTorsionTorsionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) destroy
        end subroutine
        function OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsions
        end function
        function OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsionGrids(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 OpenMM_AmoebaTorsionTorsionForce_getNumTorsionTorsionGrids
        end function
        function OpenMM_AmoebaTorsionTorsionForce_addTorsionTorsion(target, particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
chiralCheckAtomIndex, &
gridIndex)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 chiralCheckAtomIndex
            integer*4 gridIndex
            integer*4 OpenMM_AmoebaTorsionTorsionForce_addTorsionTorsion
        end function
        subroutine OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
chiralCheckAtomIndex, &
gridIndex)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 chiralCheckAtomIndex
            integer*4 gridIndex
        end subroutine
        subroutine OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionParameters(target, index, &
particle1, &
particle2, &
particle3, &
particle4, &
particle5, &
chiralCheckAtomIndex, &
gridIndex)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 index
            integer*4 particle1
            integer*4 particle2
            integer*4 particle3
            integer*4 particle4
            integer*4 particle5
            integer*4 chiralCheckAtomIndex
            integer*4 gridIndex
        end subroutine
        subroutine OpenMM_AmoebaTorsionTorsionForce_getTorsionTorsionGrid(target, index, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 index
            std::vector< std::vector< std::vector< double > > > result
        end subroutine
        subroutine OpenMM_AmoebaTorsionTorsionForce_setTorsionTorsionGrid(target, index, &
grid)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 index
            std::vector< std::vector< std::vector< double > > > grid
        end subroutine
        subroutine OpenMM_AmoebaTorsionTorsionForce_setUsesPeriodicBoundaryConditions(target, periodic)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 periodic
        end subroutine
        function OpenMM_AmoebaTorsionTorsionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaTorsionTorsionForce) target
            integer*4 OpenMM_AmoebaTorsionTorsionForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaVdwForce
        subroutine OpenMM_AmoebaVdwForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) result
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) destroy
        end subroutine
        function OpenMM_AmoebaVdwForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 OpenMM_AmoebaVdwForce_getNumParticles
        end function
        subroutine OpenMM_AmoebaVdwForce_setParticleParameters(target, particleIndex, &
parentIndex, &
vdwprType, &
sigma, &
epsilon, &
reductionFactor, &
lambda)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 particleIndex
            integer*4 parentIndex
            integer*4 vdwprType
            real*8 sigma
            real*8 epsilon
            real*8 reductionFactor
            real*8 lambda
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getParticleParameters(target, particleIndex, &
parentIndex, &
vdwprType, &
sigma, &
epsilon, &
reductionFactor, &
lambda)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 particleIndex
            integer*4 parentIndex
            integer*4 vdwprType
            real*8 sigma
            real*8 epsilon
            real*8 reductionFactor
            real*8 lambda
        end subroutine
        function OpenMM_AmoebaVdwForce_addParticle(target, parentIndex, &
vdwprType, &
sigma, &
epsilon, &
reductionFactor, &
lambda)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 parentIndex
            integer*4 vdwprType
            real*8 sigma
            real*8 epsilon
            real*8 reductionFactor
            real*8 lambda
            integer*4 OpenMM_AmoebaVdwForce_addParticle
        end function
        subroutine OpenMM_AmoebaVdwForce_computeCombinedSigmaEpsilon(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
        end subroutine
        function OpenMM_AmoebaVdwForce_getNumVdwprTypes(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 OpenMM_AmoebaVdwForce_getNumVdwprTypes
        end function
        subroutine OpenMM_AmoebaVdwForce_setNumVdwprTypes(target, newNum)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 newNum
        end subroutine
        function OpenMM_AmoebaVdwForce_getNewVdwprType(target, oldType)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 oldType
            integer*4 OpenMM_AmoebaVdwForce_getNewVdwprType
        end function
        function OpenMM_AmoebaVdwForce_getOldVdwprType(target, newType)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 newType
            integer*4 OpenMM_AmoebaVdwForce_getOldVdwprType
        end function
        subroutine OpenMM_AmoebaVdwForce_setOldVdwprType(target, newType, &
oldType)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 newType
            integer*4 oldType
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_resize(target, newSize)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 newSize
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setVdwprParametersByOldTypes(target, oldtype1, &
oldtype2, &
combinedSigma, &
combinedEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 oldtype1
            integer*4 oldtype2
            real*8 combinedSigma
            real*8 combinedEpsilon
        end subroutine
        function OpenMM_AmoebaVdwForce_addVdwprByOldTypes(target, oldtype1, &
oldtype2, &
combinedSigma, &
combinedEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 oldtype1
            integer*4 oldtype2
            real*8 combinedSigma
            real*8 combinedEpsilon
            integer*4 OpenMM_AmoebaVdwForce_addVdwprByOldTypes
        end function
        subroutine OpenMM_AmoebaVdwForce_setVdwprParameters(target, ntype1, &
ntype2, &
combinedSigma, &
combinedEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 ntype1
            integer*4 ntype2
            real*8 combinedSigma
            real*8 combinedEpsilon
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getVdwprParameters(target, ntype1, &
ntype2, &
combinedSigma, &
combinedEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 ntype1
            integer*4 ntype2
            real*8 combinedSigma
            real*8 combinedEpsilon
        end subroutine
        function OpenMM_AmoebaVdwForce_addVdwpr(target, ntype1, &
ntype2, &
combinedSigma, &
combinedEpsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 ntype1
            integer*4 ntype2
            real*8 combinedSigma
            real*8 combinedEpsilon
            integer*4 OpenMM_AmoebaVdwForce_addVdwpr
        end function
        subroutine OpenMM_AmoebaVdwForce_setSigmaCombiningRule(target, sigmaCombiningRule)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) sigmaCombiningRule
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getSigmaCombiningRule(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setEpsilonCombiningRule(target, epsilonCombiningRule)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) epsilonCombiningRule
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getEpsilonCombiningRule(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) result
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setFunctionalForm(target, functionalForm)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) functionalForm
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getFunctionalForm(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            character(*) result
        end subroutine
        function OpenMM_AmoebaVdwForce_getUseDispersionCorrection(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 OpenMM_AmoebaVdwForce_getUseDispersionCorrection
        end function
        subroutine OpenMM_AmoebaVdwForce_setUseDispersionCorrection(target, useCorrection)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 useCorrection
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setParticleExclusions(target, particleIndex, &
exclusions)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 particleIndex
            type (OpenMM_IntArray) exclusions
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_getParticleExclusions(target, particleIndex, &
exclusions)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 particleIndex
            type (OpenMM_IntArray) exclusions
        end subroutine
        function OpenMM_AmoebaVdwForce_getCutoffDistance(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            real*8 OpenMM_AmoebaVdwForce_getCutoffDistance
        end function
        subroutine OpenMM_AmoebaVdwForce_setCutoffDistance(target, distance)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            real*8 distance
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setCutoff(target, cutoff)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            real*8 cutoff
        end subroutine
        function OpenMM_AmoebaVdwForce_getCutoff(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            real*8 OpenMM_AmoebaVdwForce_getCutoff
        end function
        subroutine OpenMM_AmoebaVdwForce_getNonbondedMethod(target, result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            type (OpenMM_AmoebaVdwForce_NonbondedMethod) result
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_setNonbondedMethod(target, method)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            type (OpenMM_AmoebaVdwForce_NonbondedMethod) method
        end subroutine
        subroutine OpenMM_AmoebaVdwForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaVdwForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaVdwForce) target
            integer*4 OpenMM_AmoebaVdwForce_usesPeriodicBoundaryConditions
        end function

        ! OpenMM::AmoebaWcaDispersionForce
        subroutine OpenMM_AmoebaWcaDispersionForce_create(result)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) result
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_destroy(destroy)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) destroy
        end subroutine
        function OpenMM_AmoebaWcaDispersionForce_getNumParticles(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            integer*4 OpenMM_AmoebaWcaDispersionForce_getNumParticles
        end function
        subroutine OpenMM_AmoebaWcaDispersionForce_setParticleParameters(target, particleIndex, &
radius, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            integer*4 particleIndex
            real*8 radius
            real*8 epsilon
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_getParticleParameters(target, particleIndex, &
radius, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            integer*4 particleIndex
            real*8 radius
            real*8 epsilon
        end subroutine
        function OpenMM_AmoebaWcaDispersionForce_addParticle(target, radius, &
epsilon)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 radius
            real*8 epsilon
            integer*4 OpenMM_AmoebaWcaDispersionForce_addParticle
        end function
        subroutine OpenMM_AmoebaWcaDispersionForce_updateParametersInContext(target, context)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            Context context
        end subroutine
        function OpenMM_AmoebaWcaDispersionForce_getEpso(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getEpso
        end function
        function OpenMM_AmoebaWcaDispersionForce_getEpsh(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getEpsh
        end function
        function OpenMM_AmoebaWcaDispersionForce_getRmino(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getRmino
        end function
        function OpenMM_AmoebaWcaDispersionForce_getRminh(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getRminh
        end function
        function OpenMM_AmoebaWcaDispersionForce_getAwater(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getAwater
        end function
        function OpenMM_AmoebaWcaDispersionForce_getShctd(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getShctd
        end function
        function OpenMM_AmoebaWcaDispersionForce_getDispoff(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getDispoff
        end function
        function OpenMM_AmoebaWcaDispersionForce_getSlevy(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 OpenMM_AmoebaWcaDispersionForce_getSlevy
        end function
        subroutine OpenMM_AmoebaWcaDispersionForce_setEpso(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setEpsh(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setRmino(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setRminh(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setAwater(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setShctd(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setDispoff(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        subroutine OpenMM_AmoebaWcaDispersionForce_setSlevy(target, inputValue)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            real*8 inputValue
        end subroutine
        function OpenMM_AmoebaWcaDispersionForce_usesPeriodicBoundaryConditions(target)
            use OpenMM_Types; implicit none
            type (OpenMM_AmoebaWcaDispersionForce) target
            integer*4 OpenMM_AmoebaWcaDispersionForce_usesPeriodicBoundaryConditions
        end function


    end interface
END MODULE OpenMM
