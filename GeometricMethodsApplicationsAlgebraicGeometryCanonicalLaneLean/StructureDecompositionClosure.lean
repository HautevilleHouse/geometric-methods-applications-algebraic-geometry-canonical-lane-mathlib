import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure StructureDecompositionPackage {V : AlgebraicVarietyClosurePackage}
    {U : UniversalPropertyPackage V} {R : RepresentationTheoremPackage U} where
  decompositionIntoIrreducibles : Prop
  normalizationApplied : Prop
  resolutionOfSingularitiesApplied : Prop
  minimalModelProgramStarted : Prop

structure StructureDecompositionEvidence {V : AlgebraicVarietyClosurePackage}
    {U : UniversalPropertyPackage V} {R : RepresentationTheoremPackage U}
    (D : StructureDecompositionPackage V U R) where
  decompositionIntoIrreduciblesClosed : D.decompositionIntoIrreducibles
  normalizationAppliedClosed : D.normalizationApplied
  resolutionOfSingularitiesAppliedClosed : D.resolutionOfSingularitiesApplied
  minimalModelProgramStartedClosed : D.minimalModelProgramStarted

def StructureDecompositionClosed {V : AlgebraicVarietyClosurePackage}
    {U : UniversalPropertyPackage V} {R : RepresentationTheoremPackage U}
    (D : StructureDecompositionPackage V U R) : Prop :=
  D.decompositionIntoIrreducibles ∧ D.normalizationApplied ∧
  D.resolutionOfSingularitiesApplied ∧ D.minimalModelProgramStarted

theorem structure_decomposition_closed_from_evidence
    {V : AlgebraicVarietyClosurePackage} {U : UniversalPropertyPackage V}
    {R : RepresentationTheoremPackage U} (D : StructureDecompositionPackage V U R)
    (E : StructureDecompositionEvidence D) : StructureDecompositionClosed D := by
  exact And.intro E.decompositionIntoIrreduciblesClosed
    (And.intro E.normalizationAppliedClosed
      (And.intro E.resolutionOfSingularitiesAppliedClosed
        E.minimalModelProgramStartedClosed))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse