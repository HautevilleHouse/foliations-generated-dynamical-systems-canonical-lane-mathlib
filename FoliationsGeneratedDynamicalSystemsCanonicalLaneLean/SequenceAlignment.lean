import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.LinkageAnalysis

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure SequenceAlignment (M : FoliatedManifold) where
  referenceSequence : List (M.carrier → ℝ)
  querySequence : List (M.carrier → ℝ)
  alignmentScore : ℝ
  gapsInserted : Nat
  alignmentCorrect : Prop

def AlignmentClosed {M : FoliatedManifold} (A : SequenceAlignment M) : Prop :=
  A.alignmentCorrect ∧ A.alignmentScore > 0

theorem alignment_score_positive {M : FoliatedManifold} (A : SequenceAlignment M) :
  AlignmentClosed A → A.alignmentScore > 0 := by
  intro h
  exact h.2

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse