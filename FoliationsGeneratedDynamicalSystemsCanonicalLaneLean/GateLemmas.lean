import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.gateWitness

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse