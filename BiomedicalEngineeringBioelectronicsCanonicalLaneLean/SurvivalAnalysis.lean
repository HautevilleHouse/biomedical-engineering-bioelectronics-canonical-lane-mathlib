import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure SurvivalAnalysisPackage where
  survivalTimes : List ℝ
  censoringIndicators : List ℕ
  kaplanMeierEstimator : ℝ → ℝ
  coxProportionalHazardsModel : ℝ → ℝ → ℝ
  hazardRatio : ℝ
  logRankStatistic : ℝ
  pValue : ℝ
  kmProperties : Prop
  coxAssumptions : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  kmPropertiesClosed : S.kmProperties
  coxAssumptionsClosed : S.coxAssumptions

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.kmProperties ∧ S.coxAssumptions

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.kmPropertiesClosed E.coxAssumptionsClosed

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse