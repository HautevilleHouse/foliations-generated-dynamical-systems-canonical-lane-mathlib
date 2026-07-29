import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.ConnesCharacteristicClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationAnalyticFoundation where
  leafwiseGeometry : LeafwiseRiemannianGeometryPackage
  leafwiseGeometryEvidence : LeafwiseRiemannianGeometryEvidence leafwiseGeometry
  dynamics : FoliationDynamicsPackage leafwiseGeometry
  dynamicsEvidence : FoliationDynamicsEvidence dynamics
  holonomy : HolonomyPseudogroupPackage dynamics
  holonomyEvidence : HolonomyPseudogroupEvidence holonomy
  molino : MolinoSheafPackage holonomy
  molinoEvidence : MolinoSheafEvidence molino
  connes : ConnesCharacteristicClassPackage molino
  connesEvidence : ConnesCharacteristicClassEvidence connes

def FoliationAnalyticFoundationClosed (A : FoliationAnalyticFoundation) : Prop :=
  LeafwiseRiemannianGeometryClosed A.leafwiseGeometry ∧
  FoliationDynamicsClosed A.dynamics ∧
  HolonomyPseudogroupClosed A.holonomy ∧
  MolinoSheafClosed A.molino ∧
  ConnesCharacteristicClassClosed A.connes

theorem foliation_analytic_foundation_closed_from_evidence
    (A : FoliationAnalyticFoundation) : FoliationAnalyticFoundationClosed A := by
  exact And.intro (leafwise_riemannian_geometry_closed_from_evidence A.leafwiseGeometry A.leafwiseGeometryEvidence)
    (And.intro (foliation_dynamics_closed_from_evidence A.dynamics A.dynamicsEvidence)
      (And.intro (holonomy_pseudogroup_closed_from_evidence A.holonomy A.holonomyEvidence)
        (And.intro (molino_sheaf_closed_from_evidence A.molino A.molinoEvidence)
          (connes_characteristic_class_closed_from_evidence A.connes A.connesEvidence))))

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
