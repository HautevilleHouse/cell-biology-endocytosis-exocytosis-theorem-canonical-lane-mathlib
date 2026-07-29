import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure RegulatoryMechanismsPackage where
  phosphorylation : Prop
  ubiquitination : Prop
  lipidSignaling : Prop
  calciumSignaling : Prop
  feedbackLoops : Prop
  endosomalSortingComplex : Prop

structure RegulatoryMechanismsEvidence (R : RegulatoryMechanismsPackage) where
  phosphorylationClosed : R.phosphorylation
  ubiquitinationClosed : R.ubiquitination
  lipidSignalingClosed : R.lipidSignaling
  calciumSignalingClosed : R.calciumSignaling
  feedbackLoopsClosed : R.feedbackLoops
  endosomalSortingComplexClosed : R.endosomalSortingComplex

def RegulatoryMechanismsClosed (R : RegulatoryMechanismsPackage) : Prop :=
  R.phosphorylation ∧ R.ubiquitination ∧ R.lipidSignaling ∧
  R.calciumSignaling ∧ R.feedbackLoops ∧ R.endosomalSortingComplex

theorem regulatory_mechanisms_closed_from_evidence (R : RegulatoryMechanismsPackage)
    (E : RegulatoryMechanismsEvidence R) : RegulatoryMechanismsClosed R := by
  exact And.intro E.phosphorylationClosed
    (And.intro E.ubiquitinationClosed
      (And.intro E.lipidSignalingClosed
        (And.intro E.calciumSignalingClosed
          (And.intro E.feedbackLoopsClosed E.endosomalSortingComplexClosed))))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse