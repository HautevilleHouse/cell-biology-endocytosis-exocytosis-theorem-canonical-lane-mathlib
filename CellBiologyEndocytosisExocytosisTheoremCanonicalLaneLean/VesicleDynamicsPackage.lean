import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure VesicleDynamicsPackage where
  vesicleFormationRate : Prop
  cargoLoadingEfficiency : Prop
  membraneTraffickingFlux : Prop
  clathrinMediatedPathway : Prop

structure VesicleDynamicsEvidence (V : VesicleDynamicsPackage) where
  vesicleFormationRateClosed : V.vesicleFormationRate
  cargoLoadingEfficiencyClosed : V.cargoLoadingEfficiency
  membraneTraffickingFluxClosed : V.membraneTraffickingFlux
  clathrinMediatedPathwayClosed : V.clathrinMediatedPathway

def VesicleDynamicsClosed (V : VesicleDynamicsPackage) : Prop :=
  V.vesicleFormationRate ∧ V.cargoLoadingEfficiency ∧ V.membraneTraffickingFlux ∧ V.clathrinMediatedPathway

theorem vesicle_dynamics_closed_from_evidence (V : VesicleDynamicsPackage) (E : VesicleDynamicsEvidence V) :
    VesicleDynamicsClosed V := by
  exact And.intro E.vesicleFormationRateClosed
    (And.intro E.cargoLoadingEfficiencyClosed
      (And.intro E.membraneTraffickingFluxClosed E.clathrinMediatedPathwayClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse