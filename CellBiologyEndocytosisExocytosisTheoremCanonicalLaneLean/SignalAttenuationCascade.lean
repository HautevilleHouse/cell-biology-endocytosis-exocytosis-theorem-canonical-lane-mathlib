import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure SignalAttenuationPackage where
  surfaceReceptorCount : Prop
  ligandConcentration : Prop
  internalizationTrigger : Prop
  signalCascadeAmplitude : Prop
  desensitizationThreshold : Prop

structure SignalAttenuationEvidence (S : SignalAttenuationPackage) where
  surfaceReceptorCountClosed : S.surfaceReceptorCount
  ligandConcentrationClosed : S.ligandConcentration
  internalizationTriggerClosed : S.internalizationTrigger
  signalCascadeAmplitudeClosed : S.signalCascadeAmplitude
  desensitizationThresholdClosed : S.desensitizationThreshold

def SignalAttenuationClosed (S : SignalAttenuationPackage) : Prop :=
  S.surfaceReceptorCount ∧ S.ligandConcentration ∧ S.internalizationTrigger ∧
  S.signalCascadeAmplitude ∧ S.desensitizationThreshold

theorem signal_attenuation_closed_from_evidence (S : SignalAttenuationPackage)
    (Ev : SignalAttenuationEvidence S) : SignalAttenuationClosed S := by
  exact And.intro Ev.surfaceReceptorCountClosed
    (And.intro Ev.ligandConcentrationClosed
      (And.intro Ev.internalizationTriggerClosed
        (And.intro Ev.signalCascadeAmplitudeClosed Ev.desensitizationThresholdClosed)))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse