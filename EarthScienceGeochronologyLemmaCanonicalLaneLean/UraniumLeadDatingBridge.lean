import EarthScienceGeochronologyLemmaCanonicalLaneLean.GeochronologyAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closureCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closureCondition

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse