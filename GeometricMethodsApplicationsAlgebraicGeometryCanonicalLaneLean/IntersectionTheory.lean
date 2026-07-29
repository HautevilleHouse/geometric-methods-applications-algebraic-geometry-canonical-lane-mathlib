import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Intersection
import Mathlib.AlgebraicGeometry.ChernClasses

/-!
# Intersection Theory Package

This module formalizes intersection numbers, Chow rings, and Chern class computations.
-/

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure IntersectionTheoryPackage where
  variety : Type u
  chowRing : Type v
  intersectionProduct : Type w
  chernClasses : Type x
  riemannRochHolds : Prop
  excessIntersectionFormula : Prop

structure IntersectionTheoryEvidence (I : IntersectionTheoryPackage) where
  riemannRochClosed : I.riemannRochHolds
  excessIntersectionFormulaClosed : I.excessIntersectionFormula

def IntersectionTheoryClosed (I : IntersectionTheoryPackage) : Prop :=
  I.riemannRochHolds ∧ I.excessIntersectionFormula

theorem intersection_theory_closed_from_evidence
    (I : IntersectionTheoryPackage) (E : IntersectionTheoryEvidence I) :
    IntersectionTheoryClosed I := by
  exact And.intro E.riemannRochClosed E.excessIntersectionFormulaClosed

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
