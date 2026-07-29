import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.IsotopicDecayChain

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure ThermalHistoryModel (C : IsotopicDecayChainPackage) where
  coolingRate : ℝ
  closureTemperatureAchieved : Prop
  diffusionModelValid : Prop
  ageInterpretationConsistent : Prop

structure ThermalHistoryEvidence {C : IsotopicDecayChainPackage} (M : ThermalHistoryModel C) where
  coolingRatePositive : M.coolingRate > 0
  closureTemperatureAchievedClosed : M.closureTemperatureAchieved
  diffusionModelValidClosed : M.diffusionModelValid
  ageInterpretationConsistentClosed : M.ageInterpretationConsistent

def ThermalHistoryClosed {C : IsotopicDecayChainPackage} (M : ThermalHistoryModel C) : Prop :=
  M.coolingRate > 0 ∧ M.closureTemperatureAchieved ∧ M.diffusionModelValid ∧ M.ageInterpretationConsistent

theorem thermal_history_closed_from_evidence {C : IsotopicDecayChainPackage} (M : ThermalHistoryModel C) (E : ThermalHistoryEvidence M) : ThermalHistoryClosed M := by
  exact And.intro E.coolingRatePositive (And.intro E.closureTemperatureAchievedClosed (And.intro E.diffusionModelValidClosed E.ageInterpretationConsistentClosed))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse