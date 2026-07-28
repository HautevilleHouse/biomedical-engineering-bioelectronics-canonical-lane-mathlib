import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

def ConstrainedBEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_be_endgame (A : AdmissibleClass) :
    ConstrainedBEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
