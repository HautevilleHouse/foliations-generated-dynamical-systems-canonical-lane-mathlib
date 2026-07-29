import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure CanonicalFoliationsNeighborhoodsPackage {G : RiemannianCurvaturePackage}
    {F : FoliationsGeneratedStructure G} {D : DynamicalSystem G} where
  neighborhoodCovered : Prop
  leafwiseDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderFlow : Prop

structure CanonicalFoliationsNeighborhoodsEvidence {G : RiemannianCurvaturePackage}
    {F : FoliationsGeneratedStructure G} {D : DynamicalSystem G}
    (C : CanonicalFoliationsNeighborhoodsPackage F D) where
  neighborhoodCoveredClosed : C.neighborhoodCovered
  leafwiseDecompositionClosed : C.leafwiseDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderFlowClosed : C.persistenceUnderFlow

def CanonicalFoliationsNeighborhoodsClosed {G : RiemannianCurvaturePackage}
    {F : FoliationsGeneratedStructure G} {D : DynamicalSystem G}
    (C : CanonicalFoliationsNeighborhoodsPackage F D) : Prop :=
  C.neighborhoodCovered ∧ C.leafwiseDecomposition ∧ C.scaleCompatibility ∧ C.persistenceUnderFlow

theorem canonical_foliations_neighborhoods_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : FoliationsGeneratedStructure G} {D : DynamicalSystem G}
    (C : CanonicalFoliationsNeighborhoodsPackage F D) (E : CanonicalFoliationsNeighborhoodsEvidence C) :
    CanonicalFoliationsNeighborhoodsClosed C := by
  exact And.intro E.neighborhoodCoveredClosed
    (And.intro E.leafwiseDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderFlowClosed))

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
