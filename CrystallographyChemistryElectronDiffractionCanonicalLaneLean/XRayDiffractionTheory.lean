import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure XRayDiffractionPackage where
  structureFactor : Type u
  scatteringAmplitude : Type v
  braggCondition : Prop
  extinctionRule : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  braggConditionClosed : X.braggCondition
  extinctionRuleClosed : X.extinctionRule

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.braggCondition ∧ X.extinctionRule

theorem xray_diffraction_closed_from_evidence
    (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionClosed X := by
  exact And.intro E.braggConditionClosed E.extinctionRuleClosed

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse