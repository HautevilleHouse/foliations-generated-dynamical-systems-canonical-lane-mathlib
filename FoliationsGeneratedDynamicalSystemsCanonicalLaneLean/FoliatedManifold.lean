import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure FoliatedManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  foliation : Set (Set carrier)
  leavesSmooth : Prop
  leafDimension : Nat
  transverseStructureSmooth : Prop
  holonomyPseudoGroup : Type v

structure FoliatedDynamicalSystem (M : FoliatedManifold) where
  flow : M.carrier → ℝ → M.carrier
  flowSmooth : Prop
  preservesLeaves : Prop
  leafWiseChaotic : Prop
  invariantMeasure : Type w

def FoliatedSystemEvidence {M : FoliatedManifold} (F : FoliatedDynamicalSystem M) : Prop :=
  F.flowSmooth ∧ F.preservesLeaves ∧ F.leafWiseChaotic

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse