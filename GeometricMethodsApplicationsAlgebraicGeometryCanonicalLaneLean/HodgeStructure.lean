import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.HodgeTheory.Primitive
import Mathlib.AlgebraicGeometry.KaehlerModule

/-!
# Hodge Structure Package

This module encodes the Hodge decomposition and Hodge filtration for smooth projective varieties.
-/

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure HodgeStructurePackage where
  variety : Type u
  cohomologyRings : Type v
  hodgeDecomposition : Prop
  hodgeFiltration : Prop
  hodgeNumbers : Type w
  hodgeDiamond : Type x
  lefschetzDecomposition : Prop

structure HodgeStructureEvidence (H : HodgeStructurePackage) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeFiltrationClosed : H.hodgeFiltration
  lefschetzDecompositionClosed : H.lefschetzDecomposition

def HodgeStructureClosed (H : HodgeStructurePackage) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeFiltration ∧ H.lefschetzDecomposition

theorem hodge_structure_closed_from_evidence
    (H : HodgeStructurePackage) (E : HodgeStructureEvidence H) :
    HodgeStructureClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.hodgeFiltrationClosed E.lefschetzDecompositionClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
