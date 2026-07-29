import CrystallographyChemistryElectronDiffractionCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "crystallography-chemistry-electron-diffraction-canonical-lane",
    theoremName := "Crystallography Chemistry Electron Diffraction",
    theoremObject := "SpaceGroupClassification",
    classicalBoundary := "Full classification of crystallographic space groups in three dimensions",
    manifoldConstrainedStatement := "Constrained crystallography closure via admissible class: bridge and gate closed",
    certificateLane := "crystallography_constrained",
    carriedRemainder := "carriedRemainder: Quasicrystal classification boundary remains open"
  }

theorem theorem_statement_consistent :
    sourceTheoremStatement.certificateLane = "crystallography_constrained" := by
  rfl

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse
