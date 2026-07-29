import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.AdmissibleClass
import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

def ConstrainedFoliationsGeneratedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foliations_generated_endgame (A : AdmissibleClass) :
    ConstrainedFoliationsGeneratedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
