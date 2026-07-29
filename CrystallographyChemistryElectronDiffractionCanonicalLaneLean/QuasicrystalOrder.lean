import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure QuasicrystalOrder where
  tilingType : Type u
  symmetryGroup : Type v
  aperiodicOrder : Prop
  diffractionPatternNonPeriodic : Prop

structure QuasicrystalEvidence (Q : QuasicrystalOrder) where
  aperiodicOrderClosed : Q.aperiodicOrder
  diffractionPatternNonPeriodicClosed : Q.diffractionPatternNonPeriodic

def QuasicrystalClosed (Q : QuasicrystalOrder) : Prop :=
  Q.aperiodicOrder ∧ Q.diffractionPatternNonPeriodic

theorem quasicrystal_closed_from_evidence
    (Q : QuasicrystalOrder) (E : QuasicrystalEvidence Q) :
    QuasicrystalClosed Q := by
  exact And.intro E.apenodicOrderClosed E.diffractionPatternNonPeriodicClosed

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse