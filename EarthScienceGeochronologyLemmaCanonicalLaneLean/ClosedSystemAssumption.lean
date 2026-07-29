import EarthScienceGeochronologyLemmaCanonicalLaneLean.IsochronRegression

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure ClosedSystemAssumptionPackage {D : DecayConstantCalibrationPackage}
    {I : IsochronRegressionPackage D} where
  noGainOrLossOfParentOrDaughter : Prop
  initialDaughterRatioKnown : Prop
  closedCondition : Prop

structure ClosedSystemAssumptionEvidence {D : DecayConstantCalibrationPackage}
    {I : IsochronRegressionPackage D} (C : ClosedSystemAssumptionPackage I) where
  noGainOrLossOfParentOrDaughterClosed : C.noGainOrLossOfParentOrDaughter
  initialDaughterRatioKnownClosed : C.initialDaughterRatioKnown
  closedConditionClosed : C.closedCondition

def ClosedSystemAssumptionClosed {D : DecayConstantCalibrationPackage}
    {I : IsochronRegressionPackage D} (C : ClosedSystemAssumptionPackage I) : Prop :=
  C.noGainOrLossOfParentOrDaughter ∧ C.initialDaughterRatioKnown ∧ C.closedCondition

theorem closed_system_assumption_closed_from_evidence
    {D : DecayConstantCalibrationPackage} {I : IsochronRegressionPackage D}
    (C : ClosedSystemAssumptionPackage I) (E : ClosedSystemAssumptionEvidence C) :
    ClosedSystemAssumptionClosed C := by
  exact And.intro E.noGainOrLossOfParentOrDaughterClosed
    (And.intro E.initialDaughterRatioKnownClosed E.closedConditionClosed)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse