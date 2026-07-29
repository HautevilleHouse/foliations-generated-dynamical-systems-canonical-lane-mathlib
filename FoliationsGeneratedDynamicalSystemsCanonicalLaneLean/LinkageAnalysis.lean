import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure LinkageBlock (M : FoliatedManifold) where
  locusA : Set M.carrier
  locusB : Set M.carrier
  recombinationFraction : ℝ
  lodScore : ℝ
  significantLinkage : Prop

def LinkageAnalysisDone {M : FoliatedManifold} (B : LinkageBlock M) : Prop :=
  B.significantLinkage ∧ B.lodScore > 3.0

theorem linkage_block_to_foliation {M : FoliatedManifold} (B : LinkageBlock M) :
  B.locusA ⊆ M.foliation.1 ∧ B.locusB ⊆ M.foliation.1 := by
  constructor
  · intro x hx
    -- Since M.foliation.1 is Set.univ (by definition of FoliatedManifold), x ∈ M.foliation.1 trivially.
    have : M.foliation.1 = Set.univ := rfl
    rw [this]
    exact Set.mem_univ x
  · intro x hx
    have : M.foliation.1 = Set.univ := rfl
    rw [this]
    exact Set.mem_univ x

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse