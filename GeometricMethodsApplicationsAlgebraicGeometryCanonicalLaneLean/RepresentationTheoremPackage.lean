import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.UniversalPropertyPackage

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure RepresentationTheoremPackage {S : AlgebraicStructurePackage}
    {U : UniversalPropertyPackage S} where
  functor : Type u
  representableObject : Type v
  representingIsomorphism : Prop
  naturalTransformation : Type w
  universalityCondition : Prop

def RepresentationTheoremClosed {S : AlgebraicStructurePackage}
    {U : UniversalPropertyPackage S} (R : RepresentationTheoremPackage S U) : Prop :=
  R.representingIsomorphism ∧ R.universalityCondition

theorem representation_theorem_closed_from_evidence
    {S : AlgebraicStructurePackage} {U : UniversalPropertyPackage S}
    (R : RepresentationTheoremPackage S U)
    (h : R.representingIsomorphism ∧ R.universalityCondition) :
    RepresentationTheoremClosed R := h

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse