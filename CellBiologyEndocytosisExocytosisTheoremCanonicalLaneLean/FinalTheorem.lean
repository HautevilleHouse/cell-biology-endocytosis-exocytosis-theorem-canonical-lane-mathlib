import canonicalLaneMathlib.AdmissibleClass
import CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean.BridgeLemmas
import CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

def ConstrainedCellBiologyEndocytosisExocytosisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_biology_endocytosis_exocytosis_endgame (A : AdmissibleClass) :
    ConstrainedCellBiologyEndocytosisExocytosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse