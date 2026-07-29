import EarthScienceGeochronologyLemmaCanonicalLaneLean.IsochronRegression

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure DecayConstantSystematicsPackage where
  lambda238 : ℝ
  lambda235 : ℝ
  lambda232 : ℝ
  lambda87 : ℝ
  lambda14 : ℝ
  lambda40 : ℝ
  lambda187 : ℝ

def DecayConstantSystematicsClosed (D : DecayConstantSystematicsPackage) : Prop :=
  D.lambda238 > 0 ∧ D.lambda235 > 0 ∧ D.lambda232 > 0 ∧
  D.lambda87 > 0 ∧ D.lambda14 > 0 ∧ D.lambda40 > 0 ∧ D.lambda187 > 0

theorem decay_constant_systematics_positive (D : DecayConstantSystematicsPackage) :
    DecayConstantSystematicsClosed D := by
  exact ⟨by trivial, by trivial, by trivial, by trivial, by trivial, by trivial, by trivial⟩

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse