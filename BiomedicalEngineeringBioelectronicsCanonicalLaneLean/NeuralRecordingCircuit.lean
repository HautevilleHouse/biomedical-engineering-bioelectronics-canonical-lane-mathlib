import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure NeuralRecordingCircuit where
  inputImpedance : Type u
  noiseFigure : Type v
  bandwidth : Type w
  gainStable : Prop
  noiseModeled : Prop
  bandwidthSufficient : Prop

structure NeuralRecordingCircuitEvidence (N : NeuralRecordingCircuit) where
  gainStableClosed : N.gainStable
  noiseModeledClosed : N.noiseModeled
  bandwidthSufficientClosed : N.bandwidthSufficient

def NeuralRecordingCircuitClosed (N : NeuralRecordingCircuit) : Prop :=
  N.gainStable ∧ N.noiseModeled ∧ N.bandwidthSufficient

theorem neural_recording_circuit_closed_from_evidence (N : NeuralRecordingCircuit) (E : NeuralRecordingCircuitEvidence N) :
    NeuralRecordingCircuitClosed N := by
  exact And.intro E.gainStableClosed (And.intro E.noiseModeledClosed E.bandwidthSufficientClosed)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
