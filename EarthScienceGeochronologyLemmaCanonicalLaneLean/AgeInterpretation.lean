import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.UraniumLeadDecay
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.IsochronMethod

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure AgeInterpretationPackage (P : UraniumLeadDecayPackage) (I : IsochronMethodPackage P) where
  calculatedAge : ℝ
  uncertainty : ℝ
  geologicalContext : Prop
  agePositive : calculatedAge > 0
  uncertaintyNonnegative : uncertainty ≥ 0

structure AgeInterpretationEvidence {P : UraniumLeadDecayPackage} {I : IsochronMethodPackage P} (A : AgeInterpretationPackage P I) where
  agePositiveClosed : A.agePositive
  uncertaintyNonnegativeClosed : A.uncertaintyNonnegative
  geologicalContextClosed : A.geologicalContext

def AgeInterpretationClosed {P : UraniumLeadDecayPackage} {I : IsochronMethodPackage P} (A : AgeInterpretationPackage P I) : Prop :=
  A.calculatedAge > 0 ∧ A.uncertainty ≥ 0 ∧ A.geologicalContext

theorem age_interpretation_closed_from_evidence {P : UraniumLeadDecayPackage} {I : IsochronMethodPackage P} (A : AgeInterpretationPackage P I) (E : AgeInterpretationEvidence A) : AgeInterpretationClosed A :=
  And.intro E.agePositiveClosed (And.intro E.uncertaintyNonnegativeClosed E.geologicalContextClosed)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse