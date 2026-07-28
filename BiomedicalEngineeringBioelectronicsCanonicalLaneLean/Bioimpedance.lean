import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure BioimpedancePackage where
  tissueResistivity : ℝ
  tissuePermittivity : ℝ
  coleColeModel : ℝ → ℂ
  impedanceSpectroscopy : ℝ → ℂ
  phaseAngle : ℝ
  reactance : ℝ
  resistance : ℝ
  modelValidity : Prop
  parameterConsistency : Prop

structure BioimpedanceEvidence (B : BioimpedancePackage) where
  modelValidityClosed : B.modelValidity
  parameterConsistencyClosed : B.parameterConsistency

def BioimpedanceClosed (B : BioimpedancePackage) : Prop :=
  B.modelValidity ∧ B.parameterConsistency

theorem bioimpedance_closed_from_evidence (B : BioimpedancePackage) (E : BioimpedanceEvidence B) :
    BioimpedanceClosed B := by
  exact And.intro E.modelValidityClosed E.parameterConsistencyClosed

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse