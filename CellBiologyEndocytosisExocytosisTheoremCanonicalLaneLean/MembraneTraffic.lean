import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure MembraneTrafficPackage where
  membraneComposition : Prop
  curvatureGeneration : Prop
  scissionFactors : Prop
  fusionFactors : Prop

structure MembraneTrafficEvidence (M : MembraneTrafficPackage) where
  membraneCompositionClosed : M.membraneComposition
  curvatureGenerationClosed : M.curvatureGeneration
  scissionFactorsClosed : M.scissionFactors
  fusionFactorsClosed : M.fusionFactors

def MembraneTrafficClosed (M : MembraneTrafficPackage) : Prop :=
  M.membraneComposition ∧ M.curvatureGeneration ∧ M.scissionFactors ∧ M.fusionFactors

theorem membrane_traffic_closed_from_evidence (M : MembraneTrafficPackage) (E : MembraneTrafficEvidence M) :
    MembraneTrafficClosed M := by
  exact And.intro E.membraneCompositionClosed (And.intro E.curvatureGenerationClosed (And.intro E.scissionFactorsClosed E.fusionFactorsClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse