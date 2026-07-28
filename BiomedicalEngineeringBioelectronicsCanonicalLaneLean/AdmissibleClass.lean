import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure BioelectronicAdmittedObject where
  deviceModel : Type
  tissueModel : Type
  interfaceImpedance : Prop
  signalFidelity : Prop
  conclusion : interfaceImpedance ∧ signalFidelity

structure AdmissibleClass where
  object : BioelectronicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.interfaceImpedance ∧ A.object.signalFidelity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
