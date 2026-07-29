import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.FoliatedManifold

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure HardyWeinbergModel (M : FoliatedManifold) where
  alleleFrequencies : M.carrier → ℝ → ℝ × ℝ
  equilibriumCondition : Prop
  equilibriumAttractor : Prop
  populationStratification : Prop
  chiSquareStatistic : ℝ

def HardyWeinbergEquilibriumReached {M : FoliatedManifold} (H : HardyWeinbergModel M) : Prop :=
  H.equilibriumCondition ∧ H.equilibriumAttractor

theorem hardy_weinberg_equilibrium_stable {M : FoliatedManifold} (H : HardyWeinbergModel M) :
  HardyWeinbergEquilibriumReached H → H.populationStratification := by
  intro eq
  exact eq.2

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse