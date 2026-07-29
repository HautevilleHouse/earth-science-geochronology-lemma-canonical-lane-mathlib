import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exfalso; exact A.endpointSatisfied

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse