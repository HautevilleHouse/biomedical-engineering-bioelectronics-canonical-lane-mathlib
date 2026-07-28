import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure PharmacokineticModel where
  absorptionRate : Type u
  distributionVolume : Type v
  eliminationHalfLife : Type w
  linearPK : Prop
  doseProportionality : Prop
  steadyStateAttained : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModel) where
  linearPKClosed : P.linearPK
  doseProportionalityClosed : P.doseProportionality
  steadyStateAttainedClosed : P.steadyStateAttained

def PharmacokineticModelClosed (P : PharmacokineticModel) : Prop :=
  P.linearPK ∧ P.doseProportionality ∧ P.steadyStateAttained

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModel) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact And.intro E.linearPKClosed (And.intro E.doseProportionalityClosed E.steadyStateAttainedClosed)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
