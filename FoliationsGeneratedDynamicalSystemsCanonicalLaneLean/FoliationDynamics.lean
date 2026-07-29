import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.LeafwiseRiemannianGeometry

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationDynamicsPackage (G : LeafwiseRiemannianGeometryPackage) where
  generatingVectorField : Type u
  flowAlongLeaves : Type v
  transverseDynamics : Prop
  invariantMeasures : Type w
  ergodicTheory : Prop
  mixingProperties : Prop

structure FoliationDynamicsEvidence {G : LeafwiseRiemannianGeometryPackage} (F : FoliationDynamicsPackage G) where
  transverseDynamicsClosed : F.transverseDynamics
  ergodicTheoryClosed : F.ergodicTheory
  mixingPropertiesClosed : F.mixingProperties

def FoliationDynamicsClosed {G : LeafwiseRiemannianGeometryPackage} (F : FoliationDynamicsPackage G) : Prop :=
  F.transverseDynamics ∧ F.ergodicTheory ∧ F.mixingProperties

theorem foliation_dynamics_closed_from_evidence
    {G : LeafwiseRiemannianGeometryPackage} (F : FoliationDynamicsPackage G)
    (E : FoliationDynamicsEvidence F) : FoliationDynamicsClosed F := by
  exact And.intro E.transverseDynamicsClosed (And.intro E.ergodicTheoryClosed E.mixingPropertiesClosed)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
