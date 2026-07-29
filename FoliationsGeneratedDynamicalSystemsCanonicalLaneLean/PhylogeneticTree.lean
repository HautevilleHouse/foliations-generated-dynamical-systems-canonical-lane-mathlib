import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  tree : Type u
  branchLengths : tree → ℝ
  topology : Prop
  edgeWeights : Prop
  likelihood : Prop
  topologyTerm : topology
  edgeWeightsTerm : edgeWeights
  likelihoodTerm : likelihood

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  topologyClosed : P.topology
  edgeWeightsClosed : P.edgeWeights
  likelihoodClosed : P.likelihood

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.topology ∧ P.edgeWeights ∧ P.likelihood

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P :=
  And.intro E.topologyClosed (And.intro E.edgeWeightsClosed E.likelihoodClosed)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse