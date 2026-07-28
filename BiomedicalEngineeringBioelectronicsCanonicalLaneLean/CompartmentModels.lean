import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure CompartmentModelPackage where
  centralCompartmentVolume : ℝ
  peripheralCompartmentVolume : ℝ
  interCompartmentClearance : ℝ
  eliminationClearance : ℝ
  dose : ℝ
  timePoints : List ℝ
  drugAmountCentral : ℝ → ℝ
  drugAmountPeripheral : ℝ → ℝ
  modelEquations : Prop
  initialConditions : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  modelEquationsClosed : C.modelEquations
  initialConditionsClosed : C.initialConditions

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.modelEquations ∧ C.initialConditions

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.modelEquationsClosed E.initialConditionsClosed

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse