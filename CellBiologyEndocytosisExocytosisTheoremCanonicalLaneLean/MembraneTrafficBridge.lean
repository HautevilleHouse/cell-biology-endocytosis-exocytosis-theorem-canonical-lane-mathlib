import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.endocytosisFunctional ∧ A.object.exocytosisFunctional ∧ A.object.vesicleFusionCompetent

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse