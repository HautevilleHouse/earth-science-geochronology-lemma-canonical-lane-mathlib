import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.UraniumLeadDecay

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure IsochronMethodPackage (P : UraniumLeadDecayPackage) where
  sampleCollection : Type u
  isotopeRatios : sampleCollection → ℝ × ℝ
  linearFit : Prop
  slopeEqualsDecayConstantTimesAge : Prop
  fitResidualsSmall : Prop

structure IsochronMethodEvidence {P : UraniumLeadDecayPackage} (I : IsochronMethodPackage P) where
  linearFitClosed : I.linearFit
  slopeEqualsDecayConstantTimesAgeClosed : I.slopeEqualsDecayConstantTimesAge
  fitResidualsSmallClosed : I.fitResidualsSmall

def IsochronMethodClosed {P : UraniumLeadDecayPackage} (I : IsochronMethodPackage P) : Prop :=
  I.linearFit ∧ I.slopeEqualsDecayConstantTimesAge ∧ I.fitResidualsSmall

theorem isochron_method_closed_from_evidence {P : UraniumLeadDecayPackage} (I : IsochronMethodPackage P) (E : IsochronMethodEvidence I) : IsochronMethodClosed I :=
  And.intro E.linearFitClosed (And.intro E.slopeEqualsDecayConstantTimesAgeClosed E.fitResidualsSmallClosed)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse