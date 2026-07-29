import EarthScienceGeochronologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : GeochronologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeochronologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse