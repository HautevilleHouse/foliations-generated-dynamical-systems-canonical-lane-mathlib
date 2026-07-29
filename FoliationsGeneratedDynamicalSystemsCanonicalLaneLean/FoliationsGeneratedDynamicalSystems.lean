import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationsGeneratedDynamicalSystemsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FoliationsGeneratedDynamicalSystemsAdmittedObject where
  space : FoliationsGeneratedDynamicalSystemsSpace
  foliationStructured : Prop
  dynamicalSystemGenerated : Prop
  leafModel : Type
  leafTopology : TopologicalSpace leafModel
  leafHolonomyClosed : Prop
  conclusion : leafHolonomyClosed

structure FoliationsGeneratedDynamicalSystemsEndgameState where
  object : FoliationsGeneratedDynamicalSystemsAdmittedObject

def FoliationsGeneratedDynamicalSystemsWitnessClosed (O : FoliationsGeneratedDynamicalSystemsAdmittedObject) : Prop :=
  O.leafHolonomyClosed

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
