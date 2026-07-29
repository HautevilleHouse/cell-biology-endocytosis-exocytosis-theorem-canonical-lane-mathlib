import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ReceptorRecyclingPackage where
  earlyEndosomeSorting : Prop
  retromerComplexRecognition : Prop
  recyclingEndosomeTraffic : Prop
  plasmaMembraneReinsertion : Prop

structure ReceptorRecyclingEvidence (R : ReceptorRecyclingPackage) where
  earlyEndosomeSortingClosed : R.earlyEndosomeSorting
  retromerComplexRecognitionClosed : R.retromerComplexRecognition
  recyclingEndosomeTrafficClosed : R.recyclingEndosomeTraffic
  plasmaMembraneReinsertionClosed : R.plasmaMembraneReinsertion

def ReceptorRecyclingClosed (R : ReceptorRecyclingPackage) : Prop :=
  R.earlyEndosomeSorting ∧ R.retromerComplexRecognition ∧ R.recyclingEndosomeTraffic ∧ R.plasmaMembraneReinsertion

theorem receptor_recycling_closed_from_evidence (R : ReceptorRecyclingPackage) (E : ReceptorRecyclingEvidence R) :
    ReceptorRecyclingClosed R := by
  exact And.intro E.earlyEndosomeSortingClosed
    (And.intro E.retromerComplexRecognitionClosed
      (And.intro E.recyclingEndosomeTrafficClosed E.plasmaMembraneReinsertionClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse