import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure PharmacokineticEquationPackage {C : CompartmentModelPackage} where
  absorptionModel : Prop
  distributionModel : Prop
  eliminationModel : Prop
  doseProtocol : Prop
  concentrationFunction : Prop

structure PharmacokineticEquationEvidence {C : CompartmentModelPackage} (P : PharmacokineticEquationPackage C) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  eliminationModelClosed : P.eliminationModel
  doseProtocolClosed : P.doseProtocol
  concentrationFunctionClosed : P.concentrationFunction

def PharmacokineticEquationClosed {C : CompartmentModelPackage} (P : PharmacokineticEquationPackage C) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.eliminationModel ∧ P.doseProtocol ∧ P.concentrationFunction

theorem pharmacokinetic_equation_closed_from_evidence {C : CompartmentModelPackage} (P : PharmacokineticEquationPackage C) (E : PharmacokineticEquationEvidence P) :
    PharmacokineticEquationClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.eliminationModelClosed
        (And.intro E.doseProtocolClosed E.concentrationFunctionClosed)))

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
