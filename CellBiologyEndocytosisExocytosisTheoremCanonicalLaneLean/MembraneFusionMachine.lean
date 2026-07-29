import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure MembraneFusionPackage where
  vesicleMembrane : Type u
  targetMembrane : Type v
  snareAssembly : Prop
  hemifusionIntermediate : Prop
  fusionPoreOpens : Prop
  contentRelease : Prop

structure MembraneFusionEvidence (F : MembraneFusionPackage) where
  snareAssemblyClosed : F.snareAssembly
  hemifusionIntermediateClosed : F.hemifusionIntermediate
  fusionPoreOpensClosed : F.fusionPoreOpens
  contentReleaseClosed : F.contentRelease

def MembraneFusionClosed (F : MembraneFusionPackage) : Prop :=
  F.snareAssembly ∧ F.hemifusionIntermediate ∧ F.fusionPoreOpens ∧ F.contentRelease

theorem membrane_fusion_closed_from_evidence (F : MembraneFusionPackage)
    (Ev : MembraneFusionEvidence F) : MembraneFusionClosed F := by
  exact And.intro Ev.snareAssemblyClosed
    (And.intro Ev.hemifusionIntermediateClosed
      (And.intro Ev.fusionPoreOpensClosed Ev.contentReleaseClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse