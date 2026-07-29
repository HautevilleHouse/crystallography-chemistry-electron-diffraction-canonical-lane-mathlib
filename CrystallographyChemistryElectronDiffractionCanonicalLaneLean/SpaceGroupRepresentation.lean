import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffraction

structure SpaceGroup where
  carrier : Type
  operations : carrier → carrier
  groupStructure : Group carrier
  isSymmorphic : Prop
  holosymmetry : Prop
  holosymmetryClosed : holosymmetry

structure SpaceGroupRepresentation where
  spaceGroup : SpaceGroup
  pointGroup : Type
  translationSubgroup : Type
  extensionClass : Prop
  representationAction : carrier → carrier
  representationClosed : extensionClass ∧ (∀ g : carrier, representationAction (groupStructure.inv g) = groupStructure.inv (representationAction g))

structure SpaceGroupEvidence (R : SpaceGroupRepresentation) where
  extensionClassClosed : R.extensionClass
  representationActionClosed : ∀ g : R.spaceGroup.carrier, R.representationAction (R.spaceGroup.groupStructure.inv g) = R.spaceGroup.groupStructure.inv (R.representationAction g)

def SpaceGroupRepresentationClosed (R : SpaceGroupRepresentation) : Prop :=
  R.representationClosed

theorem space_group_representation_closed_from_evidence (R : SpaceGroupRepresentation) (E : SpaceGroupEvidence R) :
    SpaceGroupRepresentationClosed R := by
  refine And.intro E.extensionClassClosed ?_
  exact E.representationActionClosed

end CrystallographyChemistryElectronDiffraction
end HautevilleHouse
