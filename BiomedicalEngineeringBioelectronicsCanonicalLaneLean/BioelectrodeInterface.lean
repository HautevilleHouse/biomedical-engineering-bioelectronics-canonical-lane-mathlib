import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure BioelectrodeInterface where
  electrodeCapacitance : Type u
  chargeTransferResistance : Type v
  warburgImpedance : Type w
  doubleLayerFormed : Prop
  faradaicReactionModeled : Prop
  impedanceSpectrumValid : Prop

structure BioelectrodeInterfaceEvidence (B : BioelectrodeInterface) where
  doubleLayerFormedClosed : B.doubleLayerFormed
  faradaicReactionModeledClosed : B.faradaicReactionModeled
  impedanceSpectrumValidClosed : B.impedanceSpectrumValid

def BioelectrodeInterfaceClosed (B : BioelectrodeInterface) : Prop :=
  B.doubleLayerFormed ∧ B.faradaicReactionModeled ∧ B.impedanceSpectrumValid

theorem bioelectrode_interface_closed_from_evidence (B : BioelectrodeInterface) (E : BioelectrodeInterfaceEvidence B) :
    BioelectrodeInterfaceClosed B := by
  exact And.intro E.doubleLayerFormedClosed (And.intro E.faradaicReactionModeledClosed E.impedanceSpectrumValidClosed)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
