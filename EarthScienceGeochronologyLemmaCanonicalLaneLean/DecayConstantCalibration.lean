import EarthScienceGeochronologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure DecayConstantCalibrationPackage where
  decayConstant : Float
  halfLifeUncertainty : Float
  calibrationStandard : String
  calibrationTraceable : Prop

structure DecayConstantCalibrationEvidence (D : DecayConstantCalibrationPackage) where
  calibrationTraceableClosed : D.calibrationTraceable

def DecayConstantCalibrationClosed (D : DecayConstantCalibrationPackage) : Prop :=
  D.calibrationTraceable

theorem decay_constant_calibration_closed_from_evidence
    (D : DecayConstantCalibrationPackage) (E : DecayConstantCalibrationEvidence D) :
    DecayConstantCalibrationClosed D := by
  exact E.calibrationTraceableClosed

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse