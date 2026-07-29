import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure GeochronologyAdmittedObject where
  sample : Type
  ageEstimate : sample → ℝ
  isotopicSystemClosed : Prop
  decayConstantsKnown : Prop
  closureCondition : isotopicSystemClosed ∧ decayConstantsKnown

structure AdmissibleClass where
  object : GeochronologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.closureCondition ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse