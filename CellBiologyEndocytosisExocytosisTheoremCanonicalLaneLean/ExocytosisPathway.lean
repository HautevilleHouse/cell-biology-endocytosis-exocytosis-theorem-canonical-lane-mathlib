import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ExocytosisPathwayPackage where
  secretoryVesicleTrafficking : Prop
  vesicleDocking : Prop
  snareMediatedFusion : Prop
  contentRelease : Prop

structure ExocytosisPathwayEvidence (P : ExocytosisPathwayPackage) where
  secretoryVesicleTraffickingClosed : P.secretoryVesicleTrafficking
  vesicleDockingClosed : P.vesicleDocking
  snareMediatedFusionClosed : P.snareMediatedFusion
  contentReleaseClosed : P.contentRelease

def ExocytosisPathwayClosed (P : ExocytosisPathwayPackage) : Prop :=
  P.secretoryVesicleTrafficking ∧ P.vesicleDocking ∧ P.snareMediatedFusion ∧ P.contentRelease

theorem exocytosis_pathway_closed_from_evidence
    (P : ExocytosisPathwayPackage) (E : ExocytosisPathwayEvidence P) :
    ExocytosisPathwayClosed P := by
  exact And.intro E.secretoryVesicleTraffickingClosed
    (And.intro E.vesicleDockingClosed
      (And.intro E.snareMediatedFusionClosed E.contentReleaseClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse