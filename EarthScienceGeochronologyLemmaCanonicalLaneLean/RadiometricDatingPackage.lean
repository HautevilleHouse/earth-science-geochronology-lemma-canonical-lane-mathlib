import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure RadiometricDatingPackage where
  isotopeSystem : Type u
  parentIsotope : Type v
  daughterIsotope : Type w
  decayConstant : Prop
  initialRatio : Prop
  measurementUncertainty : Prop
  decayConstantDefined : decayConstant
  initialRatioDefined : initialRatio

structure RadiometricDatingEvidence (R : RadiometricDatingPackage) where
  decayConstantClosed : R.decayConstant
  initialRatioClosed : R.initialRatio
  measurementUncertaintyClosed : R.measurementUncertainty

def RadiometricDatingClosed (R : RadiometricDatingPackage) : Prop :=
  R.decayConstant ∧ R.initialRatio ∧ R.measurementUncertainty

theorem radiometric_dating_closed_from_evidence (R : RadiometricDatingPackage)
    (E : RadiometricDatingEvidence R) : RadiometricDatingClosed R := by
  exact And.intro E.decayConstantClosed (And.intro E.initialRatioClosed E.measurementUncertaintyClosed)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse