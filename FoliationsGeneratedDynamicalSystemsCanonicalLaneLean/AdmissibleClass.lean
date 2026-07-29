import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : FoliationsGeneratedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FoliationsGeneratedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
