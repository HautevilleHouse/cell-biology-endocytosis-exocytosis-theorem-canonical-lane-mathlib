import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure EndocytosisExocytosisBalancePackage where
  endocyticFlux : Prop
  exocyticFlux : Prop
  membraneAreaConservation : Prop
  steadyStateCondition : Prop

structure EndocytosisExocytosisBalanceEvidence (B : EndocytosisExocytosisBalancePackage) where
  endocyticFluxClosed : B.endocyticFlux
  exocyticFluxClosed : B.exocyticFlux
  membraneAreaConservationClosed : B.membraneAreaConservation
  steadyStateConditionClosed : B.steadyStateCondition

def EndocytosisExocytosisBalanceClosed (B : EndocytosisExocytosisBalancePackage) : Prop :=
  B.endocyticFlux ∧ B.exocyticFlux ∧ B.membraneAreaConservation ∧ B.steadyStateCondition

theorem endocytosis_exocytosis_balance_closed_from_evidence
    (B : EndocytosisExocytosisBalancePackage)
    (Ev : EndocytosisExocytosisBalanceEvidence B) :
    EndocytosisExocytosisBalanceClosed B := by
  exact And.intro Ev.endocyticFluxClosed
    (And.intro Ev.exocyticFluxClosed
      (And.intro Ev.membraneAreaConservationClosed Ev.steadyStateConditionClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse