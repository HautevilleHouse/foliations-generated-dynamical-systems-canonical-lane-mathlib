import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.FoliationRoute

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure LeafwiseGeometryAnalyticCertificate (G : LeafwiseRiemannianGeometryPackage) where
  leafwise : Prop
  metricSmooth : Prop
  leafwiseGeodesic : Prop
  leafwiseClosed : leafwise
  metricSmoothClosed : metricSmooth
  leafwiseGeodesicClosed : leafwiseGeodesic
  leafwiseGeometryEvidence : LeafwiseRiemannianGeometryEvidence G

def LeafwiseGeometryAnalyticCertificateClosed {G : LeafwiseRiemannianGeometryPackage}
    (C : LeafwiseGeometryAnalyticCertificate G) : Prop :=
  C.leafwise ∧ C.metricSmooth ∧ C.leafwiseGeodesic ∧ LeafwiseRiemannianGeometryClosed G

theorem leafwise_geometry_analytic_certificate_closed
    {G : LeafwiseRiemannianGeometryPackage} (C : LeafwiseGeometryAnalyticCertificate G) :
    LeafwiseGeometryAnalyticCertificateClosed C := by
  exact And.intro C.leafwiseClosed
    (And.intro C.metricSmoothClosed
      (And.intro C.leafwiseGeodesicClosed
        (leafwise_riemannian_geometry_closed_from_evidence G C.leafwiseGeometryEvidence)))

structure FoliationDynamicsAnalyticCertificate {G : LeafwiseRiemannianGeometryPackage}
    (F : FoliationDynamicsPackage G) where
  transverseDynamics : Prop
  ergodicTheory : Prop
  mixingProperties : Prop
  transverseDynamicsClosed : transverseDynamics
  ergodicTheoryClosed : ergodicTheory
  mixingPropertiesClosed : mixingProperties
  dynamicsEvidence : FoliationDynamicsEvidence F

def FoliationDynamicsAnalyticCertificateClosed {G : LeafwiseRiemannianGeometryPackage}
    {F : FoliationDynamicsPackage G} (C : FoliationDynamicsAnalyticCertificate F) : Prop :=
  C.transverseDynamics ∧ C.ergodicTheory ∧ C.mixingProperties ∧ FoliationDynamicsClosed F

theorem foliation_dynamics_analytic_certificate_closed
    {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    (C : FoliationDynamicsAnalyticCertificate F) : FoliationDynamicsAnalyticCertificateClosed C := by
  exact And.intro C.transverseDynamicsClosed
    (And.intro C.ergodicTheoryClosed
      (And.intro C.mixingPropertiesClosed
        (foliation_dynamics_closed_from_evidence F C.dynamicsEvidence)))

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
