import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure CellSystem where
  membrane : Type
  vesicles : Type
  endocytosisActive : Prop
  exocytosisActive : Prop
  cargoTransport : Prop

structure AdmittedObject where
  cell : CellSystem
  endocytosisFunctional : Prop
  exocytosisFunctional : Prop
  vesicleFusionCompetent : Prop
  conclusion : endocytosisFunctional ∧ exocytosisFunctional ∧ vesicleFusionCompetent

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.endocytosisFunctional ∧ A.object.exocytosisFunctional ∧ A.object.vesicleFusionCompetent) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse