import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffraction

structure XRayDiffractionPattern where
  crystal : BravaisLatticeClass
  incidentWavelength : ℝ
  scatteringAngles : List ℝ
  intensities : List ℝ
  braggCondition : ℝ → ℝ → Prop
  braggConditionClosed : ∀ θ : ℝ, braggCondition incidentWavelength θ

structure DiffractionEvidence (P : XRayDiffractionPattern) where
  braggConditionClosed : P.braggConditionClosed
  intensitiesNonnegative : ∀ i ∈ P.intensities, i ≥ 0

def DiffractionPatternClosed (P : XRayDiffractionPattern) : Prop :=
  P.braggConditionClosed ∧ (∀ i ∈ P.intensities, i ≥ 0)

theorem diffraction_pattern_closed_from_evidence (P : XRayDiffractionPattern) (E : DiffractionEvidence P) :
    DiffractionPatternClosed P := by
  exact And.intro E.braggConditionClosed E.intensitiesNonnegative

end CrystallographyChemistryElectronDiffraction
end HautevilleHouse
