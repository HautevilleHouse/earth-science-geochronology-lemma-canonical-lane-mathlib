import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure UraniumLeadDatingPackage where
  u238Pb206Ratio : ℝ
  u235Pb207Ratio : ℝ
  u238DecayConstant : ℝ
  u235DecayConstant : ℝ
  concordiaAge : ℝ
  discordiaAge : ℝ
  concordanceClosed : Prop
  discordanceCorrected : Prop

structure UraniumLeadDatingEvidence (U : UraniumLeadDatingPackage) where
  u238DecayConstantClosed : U.u238DecayConstant = 1.55125e-10
  u235DecayConstantClosed : U.u235DecayConstant = 9.8485e-10
  concordiaAgeClosed : U.concordiaAge = (Real.log (1 + U.u238Pb206Ratio)) / U.u238DecayConstant
  discordanceCorrectedClosed : U.discordanceCorrected

def UraniumLeadDatingClosed (U : UraniumLeadDatingPackage) : Prop :=
  U.u238DecayConstant = 1.55125e-10 ∧
  U.u235DecayConstant = 9.8485e-10 ∧
  U.concordiaAge = (Real.log (1 + U.u238Pb206Ratio)) / U.u238DecayConstant ∧
  U.discordanceCorrected

theorem uranium_lead_dating_closed_from_evidence (U : UraniumLeadDatingPackage) (E : UraniumLeadDatingEvidence U) :
    UraniumLeadDatingClosed U := by
  exact And.intro E.u238DecayConstantClosed (And.intro E.u235DecayConstantClosed (And.intro E.concordiaAgeClosed E.discordanceCorrectedClosed))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse