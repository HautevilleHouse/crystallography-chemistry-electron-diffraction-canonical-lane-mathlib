import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure StructureFactorPackage where
  atomicScatteringFactors : Prop
  millerIndices : Prop
  structureFactorEquation : Prop
  phaseProblem : Prop
  fourierSynthesis : Prop

structure StructureFactorEvidence (S : StructureFactorPackage) where
  atomicScatteringFactorsClosed : S.atomicScatteringFactors
  millerIndicesClosed : S.millerIndices
  structureFactorEquationClosed : S.structureFactorEquation
  phaseProblemClosed : S.phaseProblem
  fourierSynthesisClosed : S.fourierSynthesis

def StructureFactorClosed (S : StructureFactorPackage) : Prop :=
  S.atomicScatteringFactors ∧ S.millerIndices ∧ S.structureFactorEquation ∧ S.phaseProblem ∧ S.fourierSynthesis

theorem structure_factor_closed_from_evidence (S : StructureFactorPackage) (E : StructureFactorEvidence S) : StructureFactorClosed S := by
  exact And.intro E.atomicScatteringFactorsClosed (And.intro E.millerIndicesClosed (And.intro E.structureFactorEquationClosed (And.intro E.phaseProblemClosed E.fourierSynthesisClosed)))

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse