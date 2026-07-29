import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure VesicleSortingPackage where
  earlyEndosome : Prop
  recyclingEndosome : Prop
  lateEndosome : Prop
  lysosomalDegradation : Prop
  exocyticRelease : Prop

structure VesicleSortingEvidence (V : VesicleSortingPackage) where
  earlyEndosomeClosed : V.earlyEndosome
  recyclingEndosomeClosed : V.recyclingEndosome
  lateEndosomeClosed : V.lateEndosome
  lysosomalDegradationClosed : V.lysosomalDegradation
  exocyticReleaseClosed : V.exocyticRelease

def VesicleSortingClosed (V : VesicleSortingPackage) : Prop :=
  V.earlyEndosome ∧ V.recyclingEndosome ∧ V.lateEndosome ∧ V.lysosomalDegradation ∧ V.exocyticRelease

theorem vesicle_sorting_closed_from_evidence (V : VesicleSortingPackage) (E : VesicleSortingEvidence V) : VesicleSortingClosed V := by
  exact And.intro E.earlyEndosomeClosed (And.intro E.recyclingEndosomeClosed (And.intro E.lateEndosomeClosed (And.intro E.lysosomalDegradationClosed E.exocyticReleaseClosed)))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse