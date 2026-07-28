import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
