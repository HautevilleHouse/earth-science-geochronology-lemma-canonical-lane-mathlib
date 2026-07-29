import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure IsochronDatingPackage where
  parentIsotope : String
  daughterIsotope : String
  halfLife : ℝ
  decayConstant : ℝ
  initialRatio : ℝ
  isochronSlope : ℝ
  isochronIntercept : ℝ
  regressionFit : Prop
  ageEstimate : ℝ
  ageUncertainty : ℝ

structure IsochronDatingEvidence (I : IsochronDatingPackage) where
  halfLifeClosed : I.halfLife > 0
  decayConstantClosed : I.decayConstant = Real.log 2 / I.halfLife
  regressionFitClosed : I.regressionFit
  ageEstimateClosed : I.ageEstimate = (Real.log (1 + I.isochronSlope / I.initialRatio)) / I.decayConstant

def IsochronDatingClosed (I : IsochronDatingPackage) : Prop :=
  I.halfLife > 0 ∧
  I.decayConstant = Real.log 2 / I.halfLife ∧
  I.regressionFit ∧
  I.ageEstimate = (Real.log (1 + I.isochronSlope / I.initialRatio)) / I.decayConstant

theorem isochron_dating_closed_from_evidence (I : IsochronDatingPackage) (E : IsochronDatingEvidence I) :
    IsochronDatingClosed I := by
  exact And.intro E.halfLifeClosed (And.intro E.decayConstantClosed (And.intro E.regressionFitClosed E.ageEstimateClosed))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse