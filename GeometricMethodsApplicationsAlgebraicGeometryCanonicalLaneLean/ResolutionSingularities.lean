import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure ResolutionPackage where
  singularVariety : Type u
  resolutionMap : Type v
  exceptionalDivisors : Prop
  discrepancyFormula : Prop
  minimalModelProgram : Prop

structure ResolutionEvidence (R : ResolutionPackage) where
  exceptionalDivisorsClosed : R.exceptionalDivisors
  discrepancyFormulaClosed : R.discrepancyFormula
  minimalModelProgramClosed : R.minimalModelProgram

def ResolutionClosed (R : ResolutionPackage) : Prop :=
  R.exceptionalDivisors ∧ R.discrepancyFormula ∧ R.minimalModelProgram

theorem resolution_closed_from_evidence (R : ResolutionPackage)
    (E : ResolutionEvidence R) : ResolutionClosed R := by
  exact And.intro E.exceptionalDivisorsClosed
    (And.intro E.discrepancyFormulaClosed E.minimalModelProgramClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse