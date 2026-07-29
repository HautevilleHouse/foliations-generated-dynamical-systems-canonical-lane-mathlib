import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliationsGeneratedStructure {G : RiemannianCurvaturePackage} where
  foliation : Type u
  leafSpace : Type v
  leafInclusion : leafSpace → foliation
  smoothFoliation : Prop
  transverseStructure : Prop
  leafwiseMetric : Prop
  holonomyPseudogroup : Prop

def FoliationsGeneratedStructureClosed {G : RiemannianCurvaturePackage} (F : FoliationsGeneratedStructure G) : Prop :=
  F.smoothFoliation ∧ F.transverseStructure ∧ F.leafwiseMetric ∧ F.holonomyPseudogroup

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
