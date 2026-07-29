import FoliationsGeneratedDynamicalSystemsCanonicalLaneLean.MolinoSheaf

namespace HautevilleHouse
namespace FoliationsGeneratedDynamicalSystemsCanonicalLaneLean

structure ConnesCharacteristicClassPackage {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} (M : MolinoSheafPackage H) where
  cyclicCohomology : Type u
  characteristicMap : Type v
  connesClass : Prop
  indexTheoremInput : Prop

structure ConnesCharacteristicClassEvidence {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} {M : MolinoSheafPackage H}
    (C : ConnesCharacteristicClassPackage M) where
  connesClassClosed : C.connesClass
  indexTheoremInputClosed : C.indexTheoremInput

def ConnesCharacteristicClassClosed {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} {M : MolinoSheafPackage H}
    (C : ConnesCharacteristicClassPackage M) : Prop :=
  C.connesClass ∧ C.indexTheoremInput

theorem connes_characteristic_class_closed_from_evidence
    {G : LeafwiseRiemannianGeometryPackage} {F : FoliationDynamicsPackage G}
    {H : HolonomyPseudogroupPackage F} {M : MolinoSheafPackage H}
    (C : ConnesCharacteristicClassPackage M) (E : ConnesCharacteristicClassEvidence C) :
    ConnesCharacteristicClassClosed C := by
  exact And.intro E.connesClassClosed E.indexTheoremInputClosed

end FoliationsGeneratedDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
