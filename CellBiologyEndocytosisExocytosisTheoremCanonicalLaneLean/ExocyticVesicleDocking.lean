import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ExocyticVesiclePackage where
  vesicleMembrane : Type u
  snareComplex : Type v
  dockingComplete : Prop
  primingState : Prop
  fusogenActivated : Prop

structure ExocyticVesicleEvidence (Ev : ExocyticVesiclePackage) where
  dockingCompleteClosed : Ev.dockingComplete
  primingStateClosed : Ev.primingState
  fusogenActivatedClosed : Ev.fusogenActivated

def ExocyticVesicleClosed (Ev : ExocyticVesiclePackage) : Prop :=
  Ev.dockingComplete ∧ Ev.primingState ∧ Ev.fusogenActivated

theorem exocytic_vesicle_closed_from_evidence (Ev : ExocyticVesiclePackage)
    (E : ExocyticVesicleEvidence Ev) : ExocyticVesicleClosed Ev := by
  exact And.intro E.dockingCompleteClosed
    (And.intro E.primingStateClosed E.fusogenActivatedClosed)

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse