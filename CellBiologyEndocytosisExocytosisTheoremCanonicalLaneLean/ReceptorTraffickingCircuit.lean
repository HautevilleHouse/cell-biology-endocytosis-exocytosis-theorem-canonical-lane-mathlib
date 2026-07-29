import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ReceptorTraffickingPackage where
  receptor : Type u
  ligand : Type v
  internalizationRate : Prop
  recyclingRate : Prop
  degradationRate : Prop
  signalingOutput : Prop

structure ReceptorTraffickingEvidence (R : ReceptorTraffickingPackage) where
  internalizationRateClosed : R.internalizationRate
  recyclingRateClosed : R.recyclingRate
  degradationRateClosed : R.degradationRate
  signalingOutputClosed : R.signalingOutput

def ReceptorTraffickingClosed (R : ReceptorTraffickingPackage) : Prop :=
  R.internalizationRate ∧ R.recyclingRate ∧ R.degradationRate ∧ R.signalingOutput

theorem receptor_trafficking_closed_from_evidence (R : ReceptorTraffickingPackage)
    (Ev : ReceptorTraffickingEvidence R) : ReceptorTraffickingClosed R := by
  exact And.intro Ev.internalizationRateClosed
    (And.intro Ev.recyclingRateClosed
      (And.intro Ev.degradationRateClosed Ev.signalingOutputClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse