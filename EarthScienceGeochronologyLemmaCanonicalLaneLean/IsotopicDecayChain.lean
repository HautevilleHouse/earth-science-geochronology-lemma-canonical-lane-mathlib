import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure IsotopicDecayChainPackage where
  parentIsotope : String
  daughterIsotope : String
  halfLife : ℝ
  decayConstant : ℝ
  initialRatio : ℝ
  closureTemperature : ℝ

def parentDaughterRatio (t : ℝ) (λ : ℝ) (R0 : ℝ) : ℝ :=
  R0 * Real.exp (λ * t)

structure IsotopicDecayChainEvidence (C : IsotopicDecayChainPackage) where
  halfLifeConsistent : C.halfLife > 0
  decayConstantDerived : C.decayConstant = Real.log 2 / C.halfLife
  initialRatioPositive : C.initialRatio > 0
  closureTemperatureMeasured : C.closureTemperature > 0

def IsotopicDecayChainClosed (C : IsotopicDecayChainPackage) : Prop :=
  C.halfLife > 0 ∧ C.decayConstant = Real.log 2 / C.halfLife ∧ C.initialRatio > 0 ∧ C.closureTemperature > 0

theorem isotopic_decay_chain_closed_from_evidence (C : IsotopicDecayChainPackage) (E : IsotopicDecayChainEvidence C) : IsotopicDecayChainClosed C := by
  exact And.intro E.halfLifeConsistent (And.intro E.decayConstantDerived (And.intro E.initialRatioPositive E.closureTemperatureMeasured))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse