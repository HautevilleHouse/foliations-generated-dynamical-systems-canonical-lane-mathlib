import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure DynamicalSystem {G : RiemannianCurvaturePackage} where
  stateSpace : Type u
  timeSpace : Type v
  flowMap : timeSpace → stateSpace → stateSpace
  continuousFlow : Prop
  invariantMeasure : Prop
  ergodicity : Prop

def DynamicalSystemClosed {G : RiemannianCurvaturePackage} (D : DynamicalSystem G) : Prop :=
  D.continuousFlow ∧ D.invariantMeasure ∧ D.ergodicity

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
