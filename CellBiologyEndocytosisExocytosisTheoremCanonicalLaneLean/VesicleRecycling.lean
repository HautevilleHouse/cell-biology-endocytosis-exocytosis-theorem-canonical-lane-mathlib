import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure VesicleRecyclingPackage where
  endosomalSorting : Prop
  retrievalPathways : Prop
  vesicleRegeneration : Prop
  membraneHomeostasis : Prop

structure VesicleRecyclingEvidence (P : VesicleRecyclingPackage) where
  endosomalSortingClosed : P.endosomalSorting
  retrievalPathwaysClosed : P.retrievalPathways
  vesicleRegenerationClosed : P.vesicleRegeneration
  membraneHomeostasisClosed : P.membraneHomeostasis

def VesicleRecyclingClosed (P : VesicleRecyclingPackage) : Prop :=
  P.endosomalSorting ∧ P.retrievalPathways ∧ P.vesicleRegeneration ∧ P.membraneHomeostasis

theorem vesicle_recycling_closed_from_evidence
    (P : VesicleRecyclingPackage) (E : VesicleRecyclingEvidence P) :
    VesicleRecyclingClosed P := by
  exact And.intro E.endosomalSortingClosed
    (And.intro E.retrievalPathwaysClosed
      (And.intro E.vesicleRegenerationClosed E.membraneHomeostasisClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse