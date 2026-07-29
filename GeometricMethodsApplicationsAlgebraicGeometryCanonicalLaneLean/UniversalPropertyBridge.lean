import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure UniversalPropertyPackage (V : AlgebraicVarietyClosurePackage) where
  universalPropertyStatement : Prop
  uniquenessOfMorphisms : Prop
  existenceOfMorphisms : Prop
  functorialityChecked : Prop

structure UniversalPropertyEvidence {V : AlgebraicVarietyClosurePackage}
    (U : UniversalPropertyPackage V) where
  universalPropertyStatementClosed : U.universalPropertyStatement
  uniquenessOfMorphismsClosed : U.uniquenessOfMorphisms
  existenceOfMorphismsClosed : U.existenceOfMorphisms
  functorialityCheckedClosed : U.functorialityChecked

def UniversalPropertyClosed {V : AlgebraicVarietyClosurePackage}
    (U : UniversalPropertyPackage V) : Prop :=
  U.universalPropertyStatement ∧ U.uniquenessOfMorphisms ∧
  U.existenceOfMorphisms ∧ U.functorialityChecked

theorem universal_property_closed_from_evidence
    {V : AlgebraicVarietyClosurePackage} (U : UniversalPropertyPackage V)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.universalPropertyStatementClosed
    (And.intro E.uniquenessOfMorphismsClosed
      (And.intro E.existenceOfMorphismsClosed E.functorialityCheckedClosed))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse