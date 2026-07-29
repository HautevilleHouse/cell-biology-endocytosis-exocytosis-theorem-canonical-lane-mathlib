import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure EndocytosisMechanismPackage where
  plasmaMembraneInvagination : Prop
  actinPolymerizationForce : Prop
  dynaminScission : Prop
  earlyEndosomeFusion : Prop

structure EndocytosisMechanismEvidence (E : EndocytosisMechanismPackage) where
  plasmaMembraneInvaginationClosed : E.plasmaMembraneInvagination
  actinPolymerizationForceClosed : E.actinPolymerizationForce
  dynaminScissionClosed : E.dynaminScission
  earlyEndosomeFusionClosed : E.earlyEndosomeFusion

def EndocytosisMechanismClosed (E : EndocytosisMechanismPackage) : Prop :=
  E.plasmaMembraneInvagination ∧ E.actinPolymerizationForce ∧ E.dynaminScission ∧ E.earlyEndosomeFusion

theorem endocytosis_mechanism_closed_from_evidence (E : EndocytosisMechanismPackage) (Ev : EndocytosisMechanismEvidence E) :
    EndocytosisMechanismClosed E := by
  exact And.intro Ev.plasmaMembraneInvaginationClosed
    (And.intro Ev.actinPolymerizationForceClosed
      (And.intro Ev.dynaminScissionClosed Ev.earlyEndosomeFusionClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse