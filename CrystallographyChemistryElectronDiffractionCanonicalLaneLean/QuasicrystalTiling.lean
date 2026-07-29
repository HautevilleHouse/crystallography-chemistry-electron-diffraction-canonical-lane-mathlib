import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryElectronDiffraction

structure PenroseTiling where
  prototiles : Type
  inflationRules : prototiles → List prototiles
  aperiodic : Prop
  diffractionPattern : XRayDiffractionPattern
  aperiodicityClosed : aperiodic

structure QuasicrystalTiling where
  tiling : PenroseTiling
  matchingRules : Prop
  longRangeOrder : Prop
  matchingRulesClosed : matchingRules
  longRangeOrderClosed : longRangeOrder

structure QuasicrystalEvidence (Q : QuasicrystalTiling) where
  matchingRulesClosed : Q.matchingRulesClosed
  longRangeOrderClosed : Q.longRangeOrderClosed
  aperiodicityClosed : Q.tiling.aperiodicityClosed

def QuasicrystalTilingClosed (Q : QuasicrystalTiling) : Prop :=
  Q.matchingRulesClosed ∧ Q.longRangeOrderClosed ∧ Q.tiling.apriodicityClosed

theorem quasicrystal_tiling_closed_from_evidence (Q : QuasicrystalTiling) (E : QuasicrystalEvidence Q) :
    QuasicrystalTilingClosed Q := by
  exact And.intro E.matchingRulesClosed (And.intro E.longRangeOrderClosed E.apriodicityClosed)

end CrystallographyChemistryElectronDiffraction
end HautevilleHouse
