import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffraction

structure BravaisLattice where
  carrier : Type
  latticeVectors : carrier → carrier → carrier
  additiveGroup : AddGroup carrier
  discreteSubgroup : Prop
  fullRank : Prop
  latticeVectorsClosed : discreteSubgroup ∧ fullRank

structure BravaisLatticeClass where
  lattice : BravaisLattice
  centeringType : String
  crystalSystem : String
  conventionalCell : Prop
  conventionalCellClosed : conventionalCell

structure BravaisLatticeEvidence (B : BravaisLatticeClass) where
  latticeClosed : B.lattice.latticeVectorsClosed
  conventionalCellClosed : B.conventionalCellClosed

def BravaisLatticeClosed (B : BravaisLatticeClass) : Prop :=
  B.lattice.latticeVectorsClosed ∧ B.conventionalCellClosed

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticeClass) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.latticeClosed E.conventionalCellClosed

end CrystallographyChemistryElectronDiffraction
end HautevilleHouse
