import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ExocyticPathwayPackage where
  cargoRecruitment : Prop
  vesicleBudding : Prop
  cytoskeletalTransport : Prop
  tetheringDocking : Prop
  membraneFusion : Prop
  secretionRelease : Prop

structure ExocyticPathwayEvidence (E : ExocyticPathwayPackage) where
  cargoRecruitmentClosed : E.cargoRecruitment
  vesicleBuddingClosed : E.vesicleBudding
  cytoskeletalTransportClosed : E.cytoskeletalTransport
  tetheringDockingClosed : E.tetheringDocking
  membraneFusionClosed : E.membraneFusion
  secretionReleaseClosed : E.secretionRelease

def ExocyticPathwayClosed (E : ExocyticPathwayPackage) : Prop :=
  E.cargoRecruitment ∧ E.vesicleBudding ∧
  E.cytoskeletalTransport ∧ E.tetheringDocking ∧
  E.membraneFusion ∧ E.secretionRelease

theorem exocytic_pathway_closed_from_evidence (E : ExocyticPathwayPackage)
    (Ev : ExocyticPathwayEvidence E) : ExocyticPathwayClosed E := by
  exact And.intro Ev.cargoRecruitmentClosed
    (And.intro Ev.vesicleBuddingClosed
      (And.intro Ev.cytoskeletalTransportClosed
        (And.intro Ev.tetheringDockingClosed
          (And.intro Ev.membraneFusionClosed Ev.secretionReleaseClosed))))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse