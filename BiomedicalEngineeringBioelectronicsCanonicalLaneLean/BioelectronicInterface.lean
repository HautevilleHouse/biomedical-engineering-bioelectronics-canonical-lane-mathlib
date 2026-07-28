import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure BioelectronicInterface where
  electrodeMaterial : Type
  tissueContact : Type
  impedanceSpectroscopy : Prop
  chargeInjection : Prop
  interfaceStability : Prop
  impedanceSpectroscopyTerm : impedanceSpectroscopy
  chargeInjectionTerm : chargeInjection
  interfaceStabilityTerm : interfaceStability

structure InterfaceEvidence (I : BioelectronicInterface) where
  impedanceSpectroscopyClosed : I.impedanceSpectroscopy
  chargeInjectionClosed : I.chargeInjection
  interfaceStabilityClosed : I.interfaceStability

def InterfaceClosed (I : BioelectronicInterface) : Prop :=
  I.impedanceSpectroscopy ∧ I.chargeInjection ∧ I.interfaceStability

theorem interface_closed_from_evidence (I : BioelectronicInterface) (E : InterfaceEvidence I) :
    InterfaceClosed I := by
  exact And.intro E.impedanceSpectroscopyClosed
    (And.intro E.chargeInjectionClosed E.interfaceStabilityClosed)

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse
