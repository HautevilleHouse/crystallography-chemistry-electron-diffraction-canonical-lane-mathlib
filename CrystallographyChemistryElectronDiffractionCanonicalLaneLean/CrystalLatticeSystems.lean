import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure CrystalLatticeSystem where
  latticeType : Type u
  pointGroup : Type v
  bravaisClass : Prop
  centeringType : Prop

structure CrystalLatticeEvidence (L : CrystalLatticeSystem) where
  bravaisClassClosed : L.bravaisClass
  centeringTypeClosed : L.centeringType

def CrystalLatticeClosed (L : CrystalLatticeSystem) : Prop :=
  L.bravaisClass ∧ L.centeringType

theorem crystal_lattice_closed_from_evidence
    (L : CrystalLatticeSystem) (E : CrystalLatticeEvidence L) :
    CrystalLatticeClosed L := by
  exact And.intro E.bravaisClassClosed E.centeringTypeClosed

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse