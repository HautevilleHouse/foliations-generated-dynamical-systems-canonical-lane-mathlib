import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.FoliationAnalyticFoundation

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationRouteObligations where
  leafwiseGeometry : Prop
  dynamics : Prop
  holonomy : Prop
  molino : Prop
  connes : Prop

structure FoliationRouteEvidence (R : FoliationRouteObligations) where
  leafwiseGeometryClosed : R.leafwiseGeometry
  dynamicsClosed : R.dynamics
  holonomyClosed : R.holonomy
  molinoClosed : R.molino
  connesClosed : R.connes

def FoliationRouteClosed (R : FoliationRouteObligations) : Prop :=
  R.leafwiseGeometry ∧ R.dynamics ∧ R.holonomy ∧ R.molino ∧ R.connes

theorem foliation_route_closed_from_evidence
    (R : FoliationRouteObligations) (E : FoliationRouteEvidence R) :
    FoliationRouteClosed R := by
  exact And.intro E.leafwiseGeometryClosed
    (And.intro E.dynamicsClosed
      (And.intro E.holonomyClosed (And.intro E.molinoClosed E.connesClosed)))

def FoliationAnalyticFoundation.toFoliationRouteObligations
    (A : FoliationAnalyticFoundation) : FoliationRouteObligations :=
  { leafwiseGeometry := LeafwiseRiemannianGeometryClosed A.leafwiseGeometry
    dynamics := FoliationDynamicsClosed A.dynamics
    holonomy := HolonomyPseudogroupClosed A.holonomy
    molino := MolinoSheafClosed A.molino
    connes := ConnesCharacteristicClassClosed A.connes
  }

theorem foliation_route_closed_from_analytic_foundation
    (A : FoliationAnalyticFoundation) :
    FoliationRouteClosed A.toFoliationRouteObligations := by
  apply foliation_route_closed_from_evidence A.toFoliationRouteObligations
  exact { leafwiseGeometryClosed := leafwise_riemannian_geometry_closed_from_evidence A.leafwiseGeometry A.leafwiseGeometryEvidence
         dynamicsClosed := foliation_dynamics_closed_from_evidence A.dynamics A.dynamicsEvidence
         holonomyClosed := holonomy_pseudogroup_closed_from_evidence A.holonomy A.holonomyEvidence
         molinoClosed := molino_sheaf_closed_from_evidence A.molino A.molinoEvidence
         connesClosed := connes_characteristic_class_closed_from_evidence A.connes A.connesEvidence }

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
