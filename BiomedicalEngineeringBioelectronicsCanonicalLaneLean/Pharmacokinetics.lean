import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionModel : Prop
  distributionModel : Prop
  metabolismModel : Prop
  excretionModel : Prop
  concentrationTimeProfile : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  metabolismModelClosed : P.metabolismModel
  excretionModelClosed : P.excretionModel
  concentrationTimeProfileClosed : P.concentrationTimeProfile

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.metabolismModel ∧ P.excretionModel ∧ P.concentrationTimeProfile

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.metabolismModelClosed
        (And.intro E.excretionModelClosed E.concentrationTimeProfileClosed)))

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse