import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure SheafCohomologyPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  cohomologyGroups : ℕ → Type w
  vanishingTheorem : Prop
  serreDuality : Prop

structure SheafCohomologyEvidence (S : SheafCohomologyPackage) where
  vanishingTheoremClosed : S.vanishingTheorem
  serreDualityClosed : S.serreDuality

def SheafCohomologyClosed (S : SheafCohomologyPackage) : Prop :=
  S.vanishingTheorem ∧ S.serreDuality

theorem sheaf_cohomology_closed_from_evidence (S : SheafCohomologyPackage)
    (E : SheafCohomologyEvidence S) : SheafCohomologyClosed S := by
  exact And.intro E.vanishingTheoremClosed E.serreDualityClosed

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse