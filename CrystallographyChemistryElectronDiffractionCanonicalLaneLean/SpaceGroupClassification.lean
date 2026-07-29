import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure SpaceGroupPackage where
  spaceGroupNumber : Nat
  pointGroup : String
  translationalSymmetry : Prop
  wyckoffPositions : Prop
  systematicAbsences : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  translationalSymmetryClosed : S.translationalSymmetry
  wyckoffPositionsClosed : S.wyckoffPositions
  systematicAbsencesClosed : S.systematicAbsences

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.translationalSymmetry ∧ S.wyckoffPositions ∧ S.systematicAbsences

theorem space_group_closed_from_evidence (S : SpaceGroupPackage) (E : SpaceGroupEvidence S) : SpaceGroupClosed S := by
  exact And.intro E.translationalSymmetryClosed (And.intro E.wyckoffPositionsClosed E.systematicAbsencesClosed)

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse