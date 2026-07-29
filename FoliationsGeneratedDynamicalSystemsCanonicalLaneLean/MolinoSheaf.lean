import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.HolonomyPseudogroup

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure MolinoSheafPackage {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    (H : HolonomyPseudogroupPackage F) where
  transversalModel : Type u
  localSheafData : Type v
  sheafCohomology : Type w
  molinoClass : Type x
  transverseInvariant : Prop

structure MolinoSheafEvidence {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} (M : MolinoSheafPackage H) where
  transverseInvariantClosed : M.transverseInvariant

def MolinoSheafClosed {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} (M : MolinoSheafPackage H) : Prop :=
  M.transverseInvariant

theorem molino_sheaf_closed_from_evidence
    {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} (M : MolinoSheafPackage H)
    (E : MolinoSheafEvidence M) : MolinoSheafClosed M := by
  exact E.transverseInvariantClosed

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
