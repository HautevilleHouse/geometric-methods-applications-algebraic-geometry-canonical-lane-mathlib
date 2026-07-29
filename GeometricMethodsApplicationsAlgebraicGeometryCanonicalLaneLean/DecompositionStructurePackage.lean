import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.RepresentationTheoremPackage

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure DecompositionStructurePackage {S : AlgebraicStructurePackage}
    {U : UniversalPropertyPackage S} {R : RepresentationTheoremPackage S U} where
  decompositionType : Type u
  directSummands : List (Type v)
  indecomposableComponentsClassified : Prop
  uniquenessOfDecomposition : Prop
  compatibilityWithBaseChange : Prop

def DecompositionStructureClosed {S : AlgebraicStructurePackage}
    {U : UniversalPropertyPackage S} {R : RepresentationTheoremPackage S U}
    (D : DecompositionStructurePackage S U R) : Prop :=
  D.indecomposableComponentsClassified ∧ D.uniquenessOfDecomposition ∧ D.compatibilityWithBaseChange

theorem decomposition_structure_closed_from_evidence
    {S : AlgebraicStructurePackage} {U : UniversalPropertyPackage S}
    {R : RepresentationTheoremPackage S U} (D : DecompositionStructurePackage S U R)
    (h : D.indecomposableComponentsClassified ∧ D.uniquenessOfDecomposition ∧ D.compatibilityWithBaseChange) :
    DecompositionStructureClosed D := h

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse