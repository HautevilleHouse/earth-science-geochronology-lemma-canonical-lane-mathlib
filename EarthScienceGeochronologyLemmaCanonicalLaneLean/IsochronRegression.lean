import EarthScienceGeochronologyLemmaCanonicalLaneLean.ConcordiaDiscordiaPackage

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure IsochronRegressionPackage where
  parentDaughterRatio : ℝ → ℝ
  isochronSlope : ℝ
  initialRatio : ℝ
  mswd : ℝ

structure IsochronRegressionEvidence (I : IsochronRegressionPackage) where
  slopeClosed : I.isochronSlope > 0
  initialRatioClosed : I.initialRatio ≥ 0
  mswdClosed : I.mswd < 2.0

def IsochronRegressionClosed (I : IsochronRegressionPackage) : Prop :=
  I.isochronSlope > 0 ∧ I.initialRatio ≥ 0 ∧ I.mswd < 2.0

theorem isochron_regression_closed_from_evidence
    (I : IsochronRegressionPackage) (E : IsochronRegressionEvidence I) :
    IsochronRegressionClosed I := by
  exact And.intro E.slopeClosed (And.intro E.initialRatioClosed E.mswdClosed)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse