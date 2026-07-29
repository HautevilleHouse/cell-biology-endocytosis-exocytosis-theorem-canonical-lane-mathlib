import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean.VesicleDynamics

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure EndocyticPathwayPackage {V : VesicleDynamicsPackage} where
  earlyEndosomeFusion : Prop
  recyclingEndosomeTraffic : Prop
  lateEndosomeMaturation : Prop
  lysosomalDegradation : Prop
  receptorLigandSorting : Prop

structure EndocyticPathwayEvidence {V : VesicleDynamicsPackage}
    (P : EndocyticPathwayPackage V) where
  earlyEndosomeFusionClosed : P.earlyEndosomeFusion
  recyclingEndosomeTrafficClosed : P.recyclingEndosomeTraffic
  lateEndosomeMaturationClosed : P.lateEndosomeMaturation
  lysosomalDegradationClosed : P.lysosomalDegradation
  receptorLigandSortingClosed : P.receptorLigandSorting

def EndocyticPathwayClosed {V : VesicleDynamicsPackage}
    (P : EndocyticPathwayPackage V) : Prop :=
  P.earlyEndosomeFusion ∧ P.recyclingEndosomeTraffic ∧
  P.lateEndosomeMaturation ∧ P.lysosomalDegradation ∧
  P.receptorLigandSorting

theorem endocytic_pathway_closed_from_evidence {V : VesicleDynamicsPackage}
    (P : EndocyticPathwayPackage V) (E : EndocyticPathwayEvidence P) :
    EndocyticPathwayClosed P := by
  exact And.intro E.earlyEndosomeFusionClosed
    (And.intro E.recyclingEndosomeTrafficClosed
      (And.intro E.lateEndosomeMaturationClosed
        (And.intro E.lysosomalDegradationClosed E.receptorLigandSortingClosed)))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse