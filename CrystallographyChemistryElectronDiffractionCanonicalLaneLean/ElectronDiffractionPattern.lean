import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure ElectronDiffractionPattern where
  patternType : Type u
  zoneAxis : Type v
  spotIndices : Prop
  systematicAbsences : Prop

structure ElectronDiffractionEvidence (E : ElectronDiffractionPattern) where
  spotIndicesClosed : E.spotIndices
  systematicAbsencesClosed : E.systematicAbsences

def ElectronDiffractionClosed (E : ElectronDiffractionPattern) : Prop :=
  E.spotIndices ∧ E.systematicAbsences

theorem electron_diffraction_closed_from_evidence
    (E : ElectronDiffractionPattern) (Ev : ElectronDiffractionEvidence E) :
    ElectronDiffractionClosed E := by
  exact And.intro Ev.spotIndicesClosed Ev.systematicAbsencesClosed

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse