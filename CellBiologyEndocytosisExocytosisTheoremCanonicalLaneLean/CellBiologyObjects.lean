import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure CellBiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellBiologyAdmittedObject where
  space : CellBiologySpace
  membraneDynamics : Prop
  vesicleTransport : Prop
  endocytosisExocytosisCycle : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  cycleClosure : Prop
  conclusion : cycleClosure

def CellBiologyWitnessClosed (O : CellBiologyAdmittedObject) : Prop :=
  O.cycleClosure

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse