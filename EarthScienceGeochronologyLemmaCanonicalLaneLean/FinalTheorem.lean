import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EarthScienceGeochronologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

def ConstrainedGeochronologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geochronology_endgame (A : AdmissibleClass) : ConstrainedGeochronologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse