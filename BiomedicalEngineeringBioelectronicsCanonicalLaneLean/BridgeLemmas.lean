import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.interfaceImpedance ∧ A.object.signalFidelity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
