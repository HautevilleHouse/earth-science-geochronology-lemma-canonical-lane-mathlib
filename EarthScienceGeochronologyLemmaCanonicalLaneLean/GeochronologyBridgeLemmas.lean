import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochronologyLemmaCanonicalLaneLean.RadiometricDatingPackage

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RadiometricDatingClosed (A.object : RadiometricDatingPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse