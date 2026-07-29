import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

def ConstrainedFoliationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foliations_endgame (A : AdmissibleClass) : ConstrainedFoliationsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse