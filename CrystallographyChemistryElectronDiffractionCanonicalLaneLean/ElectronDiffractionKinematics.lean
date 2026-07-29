import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffractionCanonicalLaneLean

structure ElectronDiffractionKinematicsPackage where
  electronWavelength : Prop
  braggAngleRelation : Prop
  ewaldSphere : Prop
  laueCondition : Prop
  reciprocalLattice : Prop

structure ElectronDiffractionKinematicsEvidence (E : ElectronDiffractionKinematicsPackage) where
  electronWavelengthClosed : E.electronWavelength
  braggAngleRelationClosed : E.braggAngleRelation
  ewaldSphereClosed : E.ewaldSphere
  laueConditionClosed : E.laueCondition
  reciprocalLatticeClosed : E.reciprocalLattice

def ElectronDiffractionKinematicsClosed (E : ElectronDiffractionKinematicsPackage) : Prop :=
  E.electronWavelength ∧ E.braggAngleRelation ∧ E.ewaldSphere ∧ E.laueCondition ∧ E.reciprocalLattice

theorem electron_diffraction_kinematics_closed_from_evidence (E : ElectronDiffractionKinematicsPackage) (Ev : ElectronDiffractionKinematicsEvidence E) : ElectronDiffractionKinematicsClosed E := by
  exact And.intro Ev.electronWavelengthClosed (And.intro Ev.braggAngleRelationClosed (And.intro Ev.ewaldSphereClosed (And.intro Ev.laueConditionClosed Ev.reciprocalLatticeClosed)))

end CrystallographyChemistryElectronDiffractionCanonicalLaneLean
end HautevilleHouse