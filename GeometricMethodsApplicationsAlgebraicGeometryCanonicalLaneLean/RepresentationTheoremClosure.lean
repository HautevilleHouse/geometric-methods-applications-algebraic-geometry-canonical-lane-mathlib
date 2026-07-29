import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure RepresentationTheoremPackage {V : AlgebraicVarietyClosurePackage}
    (U : UniversalPropertyPackage V) where
  representationFunctor : Type u
  fullyFaithfulness : Prop
  essentialSurjectivity : Prop
  equivalenceEstablished : Prop

structure RepresentationTheoremEvidence {V : AlgebraicVarietyClosurePackage}
    {U : UniversalPropertyPackage V} (R : RepresentationTheoremPackage U) where
  fullyFaithfulnessClosed : R.fullyFaithfulness
  essentialSurjectivityClosed : R.essentialSurjectivity
  equivalenceEstablishedClosed : R.equivalenceEstablished

def RepresentationTheoremClosed {V : AlgebraicVarietyClosurePackage}
    {U : UniversalPropertyPackage V} (R : RepresentationTheoremPackage U) : Prop :=
  R.fullyFaithfulness ∧ R.essentialSurjectivity ∧ R.equivalenceEstablished

theorem representation_theorem_closed_from_evidence
    {V : AlgebraicVarietyClosurePackage} {U : UniversalPropertyPackage V}
    (R : RepresentationTheoremPackage U) (E : RepresentationTheoremEvidence R) :
    RepresentationTheoremClosed R := by
  exact And.intro E.fullyFaithfulnessClosed
    (And.intro E.essentialSurjectivityClosed E.equivalenceEstablishedClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse