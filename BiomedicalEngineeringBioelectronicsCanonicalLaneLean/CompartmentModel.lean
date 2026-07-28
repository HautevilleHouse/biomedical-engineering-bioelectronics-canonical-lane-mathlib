import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  linearDynamics : Prop
  eliminationRate : Prop
  distributionVolume : Prop
  plasmaConcentrationCurve : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  linearDynamicsClosed : C.linearDynamics
  eliminationRateClosed : C.eliminationRate
  distributionVolumeClosed : C.distributionVolume
  plasmaConcentrationCurveClosed : C.plasmaConcentrationCurve

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.linearDynamics ∧ C.eliminationRate ∧ C.distributionVolume ∧ C.plasmaConcentrationCurve

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.linearDynamicsClosed
    (And.intro E.eliminationRateClosed
      (And.intro E.distributionVolumeClosed E.plasmaConcentrationCurveClosed))

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse