import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure EndocyticVesicle (A : AdmissibleClass) where
  cargoMolecules : Type u
  membraneComposition : Type v
  clathrinCoatPresent : Prop
  dynaminPinchComplete : Prop
  uncoatingVerified : Prop
  cargoMoleculesTerm : cargoMolecules
  membraneCompositionTerm : membraneComposition
  clathrinCoatPresentTerm : clathrinCoatPresent
  dynaminPinchCompleteTerm : dynaminPinchComplete
  uncoatingVerifiedTerm : uncoatingVerified

structure ExocyticVesicle (A : AdmissibleClass) where
  snareComplexAssembled : Prop
  vesicleDockingAchieved : Prop
  membraneFusionComplete : Prop
  cargoReleaseObserved : Prop
  snareComplexAssembledTerm : snareComplexAssembled
  vesicleDockingAchievedTerm : vesicleDockingAchieved
  membraneFusionCompleteTerm : membraneFusionComplete
  cargoReleaseObservedTerm : cargoReleaseObserved

structure EndocytosisExocytosisPackage {A : AdmissibleClass} where
  endocyticVesicle : EndocyticVesicle A
  exocyticVesicle : ExocyticVesicle A
  cycleClosed : Prop
  membraneHomeostasisPreserved : Prop
  cycleClosedTerm : cycleClosed
  membraneHomeostasisPreservedTerm : membraneHomeostasisPreserved

structure EndocytosisExocytosisEvidence {A : AdmissibleClass} (P : EndocytosisExocytosisPackage A) where
  clathrinCoatPresentClosed : P.endocyticVesicle.clathrinCoatPresent
  dynaminPinchCompleteClosed : P.endocyticVesicle.dynaminPinchComplete
  uncoatingVerifiedClosed : P.endocyticVesicle.uncoatingVerified
  snareComplexAssembledClosed : P.exocyticVesicle.snareComplexAssembled
  vesicleDockingAchievedClosed : P.exocyticVesicle.vesicleDockingAchieved
  membraneFusionCompleteClosed : P.exocyticVesicle.membraneFusionComplete
  cargoReleaseObservedClosed : P.exocyticVesicle.cargoReleaseObserved
  cycleClosedTermClosed : P.cycleClosed
  membraneHomeostasisPreservedTermClosed : P.membraneHomeostasisPreserved

def EndocytosisExocytosisClosed {A : AdmissibleClass} (P : EndocytosisExocytosisPackage A) : Prop :=
  P.endocyticVesicle.clathrinCoatPresent ∧ P.endocyticVesicle.dynaminPinchComplete ∧
  P.endocyticVesicle.uncoatingVerified ∧ P.exocyticVesicle.snareComplexAssembled ∧
  P.exocyticVesicle.vesicleDockingAchieved ∧ P.exocyticVesicle.membraneFusionComplete ∧
  P.exocyticVesicle.cargoReleaseObserved ∧ P.cycleClosed ∧ P.membraneHomeostasisPreserved

theorem endocytosis_exocytosis_closed_from_evidence {A : AdmissibleClass}
    (P : EndocytosisExocytosisPackage A) (E : EndocytosisExocytosisEvidence P) :
    EndocytosisExocytosisClosed P := by
  exact And.intro E.clathrinCoatPresentClosed
    (And.intro E.dynaminPinchCompleteClosed
      (And.intro E.uncoatingVerifiedClosed
        (And.intro E.snareComplexAssembledClosed
          (And.intro E.vesicleDockingAchievedClosed
            (And.intro E.membraneFusionCompleteClosed
              (And.intro E.cargoReleaseObservedClosed
                (And.intro E.cycleClosedTermClosed E.membraneHomeostasisPreservedTermClosed)))))))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse