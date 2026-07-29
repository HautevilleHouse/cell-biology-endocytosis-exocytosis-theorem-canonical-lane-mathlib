import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure SignalRegulationPackage where
  receptorInternalization : Prop
  signalingAttenuation : Prop
  kinaseCascade : Prop
  transcriptionalFeedback : Prop

structure SignalRegulationEvidence (P : SignalRegulationPackage) where
  receptorInternalizationClosed : P.receptorInternalization
  signalingAttenuationClosed : P.signalingAttenuation
  kinaseCascadeClosed : P.kinaseCascade
  transcriptionalFeedbackClosed : P.transcriptionalFeedback

def SignalRegulationClosed (P : SignalRegulationPackage) : Prop :=
  P.receptorInternalization ∧ P.signalingAttenuation ∧ P.kinaseCascade ∧ P.transcriptionalFeedback

theorem signal_regulation_closed_from_evidence
    (P : SignalRegulationPackage) (E : SignalRegulationEvidence P) :
    SignalRegulationClosed P := by
  exact And.intro E.receptorInternalizationClosed
    (And.intro E.signalingAttenuationClosed
      (And.intro E.kinaseCascadeClosed E.transcriptionalFeedbackClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse