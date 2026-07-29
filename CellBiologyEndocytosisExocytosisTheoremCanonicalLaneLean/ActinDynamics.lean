import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure ActinPolymerizationPackage where
  actinNucleation : Prop
  filamentElongation : Prop
  branchedNetwork : Prop
  forceGeneration : Prop

structure ActinEvidence (A : ActinPolymerizationPackage) where
  actinNucleationClosed : A.actinNucleation
  filamentElongationClosed : A.filamentElongation
  branchedNetworkClosed : A.branchedNetwork
  forceGenerationClosed : A.forceGeneration

def ActinPolymerizationClosed (A : ActinPolymerizationPackage) : Prop :=
  A.actinNucleation ∧ A.filamentElongation ∧ A.branchedNetwork ∧ A.forceGeneration

theorem actin_polymerization_closed_from_evidence (A : ActinPolymerizationPackage) (E : ActinEvidence A) : ActinPolymerizationClosed A := by
  exact And.intro E.actinNucleationClosed (And.intro E.filamentElongationClosed (And.intro E.branchedNetworkClosed E.forceGenerationClosed))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse