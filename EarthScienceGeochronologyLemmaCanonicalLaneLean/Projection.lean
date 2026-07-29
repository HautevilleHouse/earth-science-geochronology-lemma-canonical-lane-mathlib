import EarthScienceGeochronologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyLemmaCanonicalLaneLean

structure GeochronologyEndgameState where
  object : GeochronologyAdmittedObject

structure Projection (α : Type) where
  toFun : α → α
  idempotent : ∀ x, toFun (toFun x) = toFun x

def geochronologyProjection : Projection GeochronologyEndgameState :=
  { toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem geochronology_projection_idempotent (x : GeochronologyEndgameState) :
    geochronologyProjection.toFun (geochronologyProjection.toFun x) = geochronologyProjection.toFun x := by
  exact geochronologyProjection.idempotent x

end EarthScienceGeochronologyLemmaCanonicalLaneLean
end HautevilleHouse