import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.FoliationDynamics

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure HolonomyPseudogroupPackage {G : LeafwiseRiemannianGeometryPackage} (F : FoliationDynamicsPackage G) where
  holonomyGroupoid : Type u
  holonomyRepresentation : Type v
  holonomyInvariants : Prop
  pseudogroupActions : Type w
  holonomyCocycle : Prop

structure HolonomyPseudogroupEvidence {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    (H : HolonomyPseudogroupPackage F) where
  holonomyInvariantsClosed : H.holonomyInvariants
  holonomyCocycleClosed : H.holonomyCocycle

def HolonomyPseudogroupClosed {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    (H : HolonomyPseudogroupPackage F) : Prop :=
  H.holonomyInvariants ∧ H.holonomyCocycle

theorem holonomy_pseudogroup_closed_from_evidence
    {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    (H : HolonomyPseudogroupPackage F) (E : HolonomyPseudogroupEvidence H) :
    HolonomyPseudogroupClosed H := by
  exact And.intro E.holonomyInvariantsClosed E.holonomyCocycleClosed

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
