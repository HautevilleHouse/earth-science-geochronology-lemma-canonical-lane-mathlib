import EarthScienceGeochronologyLemmaCanonicalLaneLean.UraniumLeadDatingBridge

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure ConcordiaDiscordiaPackage where
  concordiaAge : ℝ
  discordiaLine : ℝ → ℝ
  pbLossCorrection : Prop
  analyticalErrorBudget : Prop

structure ConcordiaDiscordiaEvidence (C : ConcordiaDiscordiaPackage) where
  concordiaAgeClosed : C.concordiaAge > 0
  discordiaLineClosed : True
  pbLossCorrectionClosed : C.pbLossCorrection
  analyticalErrorBudgetClosed : C.analyticalErrorBudget

def ConcordiaDiscordiaClosed (C : ConcordiaDiscordiaPackage) : Prop :=
  C.concordiaAge > 0 ∧ True ∧ C.pbLossCorrection ∧ C.analyticalErrorBudget

theorem concordia_discordia_closed_from_evidence
    (C : ConcordiaDiscordiaPackage) (E : ConcordiaDiscordiaEvidence C) :
    ConcordiaDiscordiaClosed C := by
  exact And.intro E.concordiaAgeClosed
    (And.intro E.discordiaLineClosed
      (And.intro E.pbLossCorrectionClosed E.analyticalErrorBudgetClosed))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse