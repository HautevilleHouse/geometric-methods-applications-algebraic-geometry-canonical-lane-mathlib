import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Moduli
import Mathlib.Geometry.StableCurves

/-!
# Moduli Space Package

This module encodes the construction and properties of moduli spaces of algebraic curves.
-/

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure ModuliSpacePackage where
  curveGenus : Nat
  moduliSpace : Type u
  stableCurves : Type v
  deligneMumfordCompactification : Prop
  coarseModuliExists : Prop
  universalCurveExists : Prop

structure ModuliSpaceEvidence (M : ModuliSpacePackage) where
  deligneMumfordClosed : M.deligneMumfordCompactification
  coarseModuliClosed : M.coarseModuliExists
  universalCurveClosed : M.universalCurveExists

def ModuliSpaceClosed (M : ModuliSpacePackage) : Prop :=
  M.deligneMumfordCompactification ∧ M.coarseModuliExists ∧ M.universalCurveExists

theorem moduli_space_closed_from_evidence
    (M : ModuliSpacePackage) (E : ModuliSpaceEvidence M) :
    ModuliSpaceClosed M := by
  exact And.intro E.deligneMumfordClosed (And.intro E.coarseModuliClosed E.universalCurveClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
