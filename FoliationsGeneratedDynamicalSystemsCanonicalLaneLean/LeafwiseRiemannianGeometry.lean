import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure LeafwiseRiemannianGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  foliation : Type v
  leafwiseMetric : Type w
  leafwise : Prop
  metricSmooth : Prop
  leafwiseGeodesic : Prop
  leafwiseCurvature : Type x

structure LeafwiseRiemannianGeometryEvidence (G : LeafwiseRiemannianGeometryPackage) where
  leafwiseClosed : G.leafwise
  metricSmoothClosed : G.metricSmooth
  leafwiseGeodesicClosed : G.leafwiseGeodesic

def LeafwiseRiemannianGeometryClosed (G : LeafwiseRiemannianGeometryPackage) : Prop :=
  G.leafwise ∧ G.metricSmooth ∧ G.leafwiseGeodesic

theorem leafwise_riemannian_geometry_closed_from_evidence
    (G : LeafwiseRiemannianGeometryPackage) (E : LeafwiseRiemannianGeometryEvidence G) :
    LeafwiseRiemannianGeometryClosed G := by
  exact And.intro E.leafwiseClosed (And.intro E.metricSmoothClosed E.leafwiseGeodesicClosed)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
