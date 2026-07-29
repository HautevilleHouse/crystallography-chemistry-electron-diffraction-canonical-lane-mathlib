import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffraction

structure ElectronDensityReconstruction where
  structureFactors : List (ℝ × ℝ)  -- complex as real pairs
  densityMap : ℝ → ℝ → ℝ → ℝ
  inverseFourier : Prop
  phased : Prop
  phasingClosed : phased ∧ inverseFourier

structure ReconstructionEvidence (R : ElectronDensityReconstruction) where
  phasingClosed : R.phasingClosed
  densityPositive : ∀ x y z : ℝ, R.densityMap x y z ≥ 0

def ReconstructionClosed (R : ElectronDensityReconstruction) : Prop :=
  R.phasingClosed ∧ (∀ x y z : ℝ, R.densityMap x y z ≥ 0)

theorem reconstruction_closed_from_evidence (R : ElectronDensityReconstruction) (E : ReconstructionEvidence R) :
    ReconstructionClosed R := by
  exact And.intro E.phasingClosed E.densityPositive

end CrystallographyChemistryElectronDiffraction
end HautevilleHouse
