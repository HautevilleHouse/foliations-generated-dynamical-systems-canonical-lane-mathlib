import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure LeafwiseDynamicsPackage (F : FoliationPackage) where
  leafDynamics : Type u
  flowOnLeaf : leafDynamics → F.leafSpace → F.leafSpace
  timeDomain : Type v
  flowProperty : Prop
  invariantLeaf : Prop
  leafRecurrentPoints : Prop
  flowPropertyClosed : flowProperty
  invariantLeafClosed : invariantLeaf
  leafRecurrentPointsClosed : leafRecurrentPoints

structure LeafwiseDynamicsEvidence {F : FoliationPackage} (L : LeafwiseDynamicsPackage F) where
  flowPropertyClosed : L.flowProperty
  invariantLeafClosed : L.invariantLeaf
  leafRecurrentPointsClosed : L.leafRecurrentPoints

def LeafwiseDynamicsClosed {F : FoliationPackage} (L : LeafwiseDynamicsPackage F) : Prop :=
  L.flowProperty ∧ L.invariantLeaf ∧ L.leafRecurrentPoints

theorem leafwise_dynamics_closed_from_evidence {F : FoliationPackage} (L : LeafwiseDynamicsPackage F) (E : LeafwiseDynamicsEvidence L) : LeafwiseDynamicsClosed L :=
  And.intro E.flowPropertyClosed (And.intro E.invariantLeafClosed E.leafRecurrentPointsClosed)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse