import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse