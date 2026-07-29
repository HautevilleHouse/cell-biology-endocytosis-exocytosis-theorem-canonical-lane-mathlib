import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure EndocyticMembranePackage where
  plasmaMembrane : Type u
  actinCortex : Type v
  dynaminRing : Type w
  scissionComplete : Prop
  cargoCapture : Prop
  signalPathwayActivated : Prop

structure EndocyticMembraneEvidence (E : EndocyticMembranePackage) where
  scissionCompleteClosed : E.scissionComplete
  cargoCaptureClosed : E.cargoCapture
  signalPathwayActivatedClosed : E.signalPathwayActivated

def EndocyticMembraneClosed (E : EndocyticMembranePackage) : Prop :=
  E.scissionComplete ∧ E.cargoCapture ∧ E.signalPathwayActivated

theorem endocytic_membrane_closed_from_evidence (E : EndocyticMembranePackage)
    (Ev : EndocyticMembraneEvidence E) : EndocyticMembraneClosed E := by
  exact And.intro Ev.scissionCompleteClosed
    (And.intro Ev.cargoCaptureClosed Ev.signalPathwayActivatedClosed)

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse