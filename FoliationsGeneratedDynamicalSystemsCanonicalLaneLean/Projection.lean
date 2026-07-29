import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def foliationsGeneratedProjection : Projection FoliationsGeneratedEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem foliations_generated_projection_idempotent (x : FoliationsGeneratedEndgameState) :
    foliationsGeneratedProjection.toFun (foliationsGeneratedProjection.toFun x) = foliationsGeneratedProjection.toFun x := by
  exact foliationsGeneratedProjection.idempotent x

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
