import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure ConcordiaDiagram where
  uraniumLeadSystem : Prop
  concordiaCurve : Prop
  discordiaLine : Prop
  interceptAge : Prop
  upperInterceptAge : Prop
  lowerInterceptAge : Prop

structure ConcordiaEvidence (C : ConcordiaDiagram) where
  uraniumLeadSystemClosed : C.uraniumLeadSystem
  concordiaCurveClosed : C.concordiaCurve
  discordiaLineClosed : C.discordiaLine
  interceptAgeClosed : C.interceptAge
  upperInterceptAgeClosed : C.upperInterceptAge
  lowerInterceptAgeClosed : C.lowerInterceptAge

def ConcordiaClosed (C : ConcordiaDiagram) : Prop :=
  C.uraniumLeadSystem ∧ C.concordiaCurve ∧ C.discordiaLine ∧
  C.interceptAge ∧ C.upperInterceptAge ∧ C.lowerInterceptAge

theorem concordia_closed_from_evidence (C : ConcordiaDiagram)
    (E : ConcordiaEvidence C) : ConcordiaClosed C := by
  exact And.intro E.uraniumLeadSystemClosed (And.intro E.concordiaCurveClosed
    (And.intro E.discordiaLineClosed (And.intro E.interceptAgeClosed
      (And.intro E.upperInterceptAgeClosed E.lowerInterceptAgeClosed))))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse