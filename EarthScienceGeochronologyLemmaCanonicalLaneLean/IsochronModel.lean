import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure IsochronModel (R : RadiometricDatingPackage) where
  sampleSet : Type u
  measuredRatios : Prop
  isochronLine : Prop
  ageEstimate : Prop
  regressionValid : Prop

structure IsochronEvidence {R : RadiometricDatingPackage} (I : IsochronModel R) where
  measuredRatiosClosed : I.measuredRatios
  isochronLineClosed : I.isochronLine
  ageEstimateClosed : I.ageEstimate
  regressionValidClosed : I.regressionValid

def IsochronClosed {R : RadiometricDatingPackage} (I : IsochronModel R) : Prop :=
  I.measuredRatios ∧ I.isochronLine ∧ I.ageEstimate ∧ I.regressionValid

theorem isochron_closed_from_evidence {R : RadiometricDatingPackage} (I : IsochronModel R)
    (E : IsochronEvidence I) : IsochronClosed I := by
  exact And.intro E.measuredRatiosClosed (And.intro E.isochronLineClosed (And.intro E.ageEstimateClosed E.regressionValidClosed))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse