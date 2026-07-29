import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ClathrinCoatPackage where
  clathrinRecruited : Prop
  membraneInvagination : Prop
  vesicleScission : Prop
  cargoSelection : Prop

structure ClathrinEvidence (C : ClathrinCoatPackage) where
  clathrinRecruitedClosed : C.clathrinRecruited
  membraneInvaginationClosed : C.membraneInvagination
  vesicleScissionClosed : C.vesicleScission
  cargoSelectionClosed : C.cargoSelection

def ClathrinCoatClosed (C : ClathrinCoatPackage) : Prop :=
  C.clathrinRecruited ∧ C.membraneInvagination ∧ C.vesicleScission ∧ C.cargoSelection

theorem clathrin_coat_closed_from_evidence (C : ClathrinCoatPackage) (E : ClathrinEvidence C) : ClathrinCoatClosed C := by
  exact And.intro E.clathrinRecruitedClosed (And.intro E.membraneInvaginationClosed (And.intro E.vesicleScissionClosed E.cargoSelectionClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse