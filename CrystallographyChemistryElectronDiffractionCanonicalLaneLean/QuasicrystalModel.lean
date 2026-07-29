import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure QuasicrystalModelPackage where
  aperiodicOrder : Prop
  penroseTiling : Prop
  higherDimensionalEmbedding : Prop
  diffractionPatternNonCrystallographic : Prop
  indexScheme : Prop

structure QuasicrystalModelEvidence (Q : QuasicrystalModelPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  penroseTilingClosed : Q.penroseTiling
  higherDimensionalEmbeddingClosed : Q.higherDimensionalEmbedding
  diffractionPatternNonCrystallographicClosed : Q.diffractionPatternNonCrystallographic
  indexSchemeClosed : Q.indexScheme

def QuasicrystalModelClosed (Q : QuasicrystalModelPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.penroseTiling ∧ Q.higherDimensionalEmbedding ∧ Q.diffractionPatternNonCrystallographic ∧ Q.indexScheme

theorem quasicrystal_model_closed_from_evidence (Q : QuasicrystalModelPackage) (E : QuasicrystalModelEvidence Q) : QuasicrystalModelClosed Q := by
  exact And.intro E.aperiodicOrderClosed (And.intro E.penroseTilingClosed (And.intro E.higherDimensionalEmbeddingClosed (And.intro E.diffractionPatternNonCrystallographicClosed E.indexSchemeClosed)))

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse