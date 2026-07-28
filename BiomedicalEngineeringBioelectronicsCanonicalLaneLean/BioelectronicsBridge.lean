import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.CompartmentModel
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.PharmacokineticEquations
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.BiomedicalEngineeringBioelectronicsCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompartmentModelClosed (A.object.compartmentModel) ∧
  PharmacokineticEquationClosed (A.object.pharmacokineticEquation) ∧
  DiagnosticInferenceClosed (A.object.diagnosticInference) ∧
  SurvivalAnalysisClosed (A.object.survivalAnalysis)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : CompartmentModelClosed (A.object.compartmentModel) := A.object.compartmentModelEvidence
  have h2 : PharmacokineticEquationClosed (A.object.pharmacokineticEquation) := A.object.pharmacokineticEquationEvidence
  have h3 : DiagnosticInferenceClosed (A.object.diagnosticInference) := A.object.diagnosticInferenceEvidence
  have h4 : SurvivalAnalysisClosed (A.object.survivalAnalysis) := A.object.survivalAnalysisEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
