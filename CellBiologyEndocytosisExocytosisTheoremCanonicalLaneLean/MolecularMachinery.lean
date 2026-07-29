import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure MolecularMachineryPackage where
  clathrin : Prop
  adaptorProteins : Prop
  dynamin : Prop
  rabGTPases : Prop
  snares : Prop
  tetheringFactors : Prop
  cytoskeleton : Prop

structure MolecularMachineryEvidence (M : MolecularMachineryPackage) where
  clathrinClosed : M.clathrin
  adaptorProteinsClosed : M.adaptorProteins
  dynaminClosed : M.dynamin
  rabGTPasesClosed : M.rabGTPases
  snaresClosed : M.snares
  tetheringFactorsClosed : M.tetheringFactors
  cytoskeletonClosed : M.cytoskeleton

def MolecularMachineryClosed (M : MolecularMachineryPackage) : Prop :=
  M.clathrin ∧ M.adaptorProteins ∧ M.dynamin ∧
  M.rabGTPases ∧ M.snares ∧ M.tetheringFactors ∧ M.cytoskeleton

theorem molecular_machinery_closed_from_evidence (M : MolecularMachineryPackage)
    (E : MolecularMachineryEvidence M) : MolecularMachineryClosed M := by
  exact And.intro E.clathrinClosed
    (And.intro E.adaptorProteinsClosed
      (And.intro E.dynaminClosed
        (And.intro E.rabGTPasesClosed
          (And.intro E.snaresClosed
            (And.intro E.tetheringFactorsClosed E.cytoskeletonClosed)))))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse