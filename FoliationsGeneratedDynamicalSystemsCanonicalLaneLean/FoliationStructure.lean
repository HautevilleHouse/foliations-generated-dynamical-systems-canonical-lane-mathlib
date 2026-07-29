import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  leafSpace : Type v
  leafTopology : TopologicalSpace leafSpace
  foliationAtlas : Type w
  smoothCompatibility : Prop
  hausdorffSecondCountable : Prop
  leafDimensionIntegrable : Prop
  smoothCompatibilityTerm : smoothCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  leafDimensionIntegrableTerm : leafDimensionIntegrable

structure FoliationEvidence (F : FoliationPackage) where
  smoothCompatibilityClosed : F.smoothCompatibility
  hausdorffSecondCountableClosed : F.hausdorffSecondCountable
  leafDimensionIntegrableClosed : F.leafDimensionIntegrable

def FoliationClosed (F : FoliationPackage) : Prop :=
  F.smoothCompatibility ∧ F.hausdorffSecondCountable ∧ F.leafDimensionIntegrable

theorem foliation_closed_from_evidence (F : FoliationPackage) (E : FoliationEvidence F) : FoliationClosed F :=
  And.intro E.smoothCompatibilityClosed (And.intro E.hausdorffSecondCountableClosed E.leafDimensionIntegrableClosed)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse