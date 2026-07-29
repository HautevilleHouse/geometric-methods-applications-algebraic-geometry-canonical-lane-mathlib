import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure AlgebraicVarietyClosurePackage where
  variety : Type u
  topology : TopologicalSpace variety
  sheaf : Type v
  closedUnderAdmissibleClass : Prop
  universalPropertySatisfied : Prop
  representationTheoremApplied : Prop
  structureDecompositionFullyClosed : Prop

structure AlgebraicVarietyClosureEvidence (P : AlgebraicVarietyClosurePackage) where
  closedUnderAdmissibleClassClosed : P.closedUnderAdmissibleClass
  universalPropertySatisfiedClosed : P.universalPropertySatisfied
  representationTheoremAppliedClosed : P.representationTheoremApplied
  structureDecompositionFullyClosedClosed : P.structureDecompositionFullyClosed

def AlgebraicVarietyClosureClosed (P : AlgebraicVarietyClosurePackage) : Prop :=
  P.closedUnderAdmissibleClass ∧ P.universalPropertySatisfied ∧
  P.representationTheoremApplied ∧ P.structureDecompositionFullyClosed

theorem algebraic_variety_closure_closed_from_evidence
    (P : AlgebraicVarietyClosurePackage) (E : AlgebraicVarietyClosureEvidence P) :
    AlgebraicVarietyClosureClosed P := by
  exact And.intro E.closedUnderAdmissibleClassClosed
    (And.intro E.universalPropertySatisfiedClosed
      (And.intro E.representationTheoremAppliedClosed
        E.structureDecompositionFullyClosedClosed))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse