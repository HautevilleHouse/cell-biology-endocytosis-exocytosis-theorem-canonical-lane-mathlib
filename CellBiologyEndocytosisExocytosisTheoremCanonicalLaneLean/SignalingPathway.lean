import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure SignalingPathwayPackage where
  receptorInternalization : Prop
  signalPropagation : Prop
  pathwayRegulation : Prop
  feedbackMechanism : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  receptorInternalizationClosed : S.receptorInternalization
  signalPropagationClosed : S.signalPropagation
  pathwayRegulationClosed : S.pathwayRegulation
  feedbackMechanismClosed : S.feedbackMechanism

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.receptorInternalization ∧ S.signalPropagation ∧ S.pathwayRegulation ∧ S.feedbackMechanism

theorem signaling_pathway_closed_from_evidence (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.receptorInternalizationClosed (And.intro E.signalPropagationClosed (And.intro E.pathwayRegulationClosed E.feedbackMechanismClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse