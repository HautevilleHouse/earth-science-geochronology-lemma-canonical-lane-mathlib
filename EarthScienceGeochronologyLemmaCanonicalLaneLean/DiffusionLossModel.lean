import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure DiffusionLossModel where
  mineralPhase : Type u
  diffusionCoefficient : Prop
  activationEnergy : Prop
  coolingRate : Prop
  closureTemperature : Prop
  ageCorrection : Prop

structure DiffusionLossEvidence (D : DiffusionLossModel) where
  diffusionCoefficientClosed : D.diffusionCoefficient
  activationEnergyClosed : D.activationEnergy
  coolingRateClosed : D.coolingRate
  closureTemperatureClosed : D.closureTemperature
  ageCorrectionClosed : D.ageCorrection

def DiffusionLossClosed (D : DiffusionLossModel) : Prop :=
  D.diffusionCoefficient ∧ D.activationEnergy ∧ D.coolingRate ∧
  D.closureTemperature ∧ D.ageCorrection

theorem diffusion_loss_closed_from_evidence (D : DiffusionLossModel)
    (E : DiffusionLossEvidence D) : DiffusionLossClosed D := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.activationEnergyClosed
    (And.intro E.coolingRateClosed (And.intro E.closureTemperatureClosed E.ageCorrectionClosed)))

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse