import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure PhylogeneticTree (M : FoliatedManifold) where
  nodes : Set M.carrier
  edges : M.carrier → M.carrier → Prop
  root : M.carrier
  branchLengths : M.carrier → M.carrier → ℝ
  likelihood : ℝ
  treeResolved : Prop

def PhylogeneticInferenceClosed (T : PhylogeneticTree M) : Prop :=
  T.treeResolved ∧ T.likelihood > 0

theorem phylogenetic_tree_inferred (T : PhylogeneticTree M) :
  PhylogeneticInferenceClosed T → Nonempty T.nodes := by
  intro h
  refine ⟨T.root⟩

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse