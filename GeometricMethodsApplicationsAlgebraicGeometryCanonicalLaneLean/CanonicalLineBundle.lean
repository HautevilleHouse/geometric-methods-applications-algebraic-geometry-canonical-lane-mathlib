import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.OpenImmersion
import Mathlib.Geometry.Schemes.Affine

/-!
# Canonical Line Bundle Package

This module defines the canonical line bundle structures for algebraic varieties,
used in Kodaira vanishing and Hodge decomposition.
-/

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure CanonicalLineBundlePackage where
  variety : Type u
  structureSheaf : Type v
  canonicalSheaf : Type w
  dualizingSheaf : Type x
  kodairaVanishingHolds : Prop
  serreDualityHolds : Prop
  hodgeTheoryInput : Prop

structure CanonicalLineBundleEvidence (L : CanonicalLineBundlePackage) where
  kodairaVanishingClosed : L.kodairaVanishingHolds
  serreDualityClosed : L.serreDualityHolds
  hodgeTheoryInputClosed : L.hodgeTheoryInput

def CanonicalLineBundleClosed (L : CanonicalLineBundlePackage) : Prop :=
  L.kodairaVanishingHolds ∧ L.serreDualityHolds ∧ L.hodgeTheoryInput

theorem canonical_line_bundle_closed_from_evidence
    (L : CanonicalLineBundlePackage) (E : CanonicalLineBundleEvidence L) :
    CanonicalLineBundleClosed L := by
  exact And.intro E.kodairaVanishingClosed (And.intro E.serreDualityClosed E.hodgeTheoryInputClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
