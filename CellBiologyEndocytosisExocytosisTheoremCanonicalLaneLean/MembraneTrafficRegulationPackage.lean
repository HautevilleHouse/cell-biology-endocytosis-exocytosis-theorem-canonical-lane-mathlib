import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure MembraneTrafficRegulationPackage where
  rabGtpaseCycle : Prop
  lipidSignaling : Prop
  cargoSelection : Prop
  tetheringFactorencounter : Prop

structure MembraneTrafficRegulationEvidence (M : MembraneTrafficRegulationPackage) where
  rabGtpaseCycleClosed : M.rabGtpaseCycle
  lipidSignalingClosed : M.lipidSignaling
  cargoSelectionClosed : M.cargoSelection
  tetheringFactorencounterClosed : M.tetheringFactorencounter

def MembraneTrafficRegulationClosed (M : MembraneTrafficRegulationPackage) : Prop :=
  M.rabGtpaseCycle ∧ M.lipidSignaling ∧ M.cargoSelection ∧ M.tetheringFactorencounter

theorem membrane_traffic_regulation_closed_from_evidence (M : MembraneTrafficRegulationPackage) (E : MembraneTrafficRegulationEvidence M) :
    MembraneTrafficRegulationClosed M := by
  exact And.intro E.rabGtpaseCycleClosed
    (And.intro E.lipidSignalingClosed
      (And.intro E.cargoSelectionClosed E.tetheringFactorencounterClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse