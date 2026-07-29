import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure UraniumLeadDecayPackage where
  parentIsotope : Type u
  daughterIsotope : Type v
  decayConstant : ℝ
  halfLife : ℝ
  decayConstantPositive : decayConstant > 0
  halfLifePositive : halfLife > 0

structure UraniumLeadDecayEvidence (P : UraniumLeadDecayPackage) where
  decayConstantPositiveClosed : P.decayConstantPositive
  halfLifePositiveClosed : P.halfLifePositive

def UraniumLeadDecayClosed (P : UraniumLeadDecayPackage) : Prop :=
  P.decayConstant > 0 ∧ P.halfLife > 0

theorem uranium_lead_decay_closed_from_evidence (P : UraniumLeadDecayPackage) (E : UraniumLeadDecayEvidence P) : UraniumLeadDecayClosed P :=
  And.intro E.decayConstantPositiveClosed E.halfLifePositiveClosed

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse