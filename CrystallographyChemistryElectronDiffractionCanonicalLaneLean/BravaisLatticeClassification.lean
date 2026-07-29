import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure BravaisLatticePackage where
  crystalSystem : String
  latticeCentering : String
  bravaisClass : String
  symmetryConstraints : Prop
  latticeParametersRelationship : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  symmetryConstraintsClosed : B.symmetryConstraints
  latticeParametersRelationshipClosed : B.latticeParametersRelationship

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.symmetryConstraints ∧ B.latticeParametersRelationship

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.symmetryConstraintsClosed E.latticeParametersRelationshipClosed

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse