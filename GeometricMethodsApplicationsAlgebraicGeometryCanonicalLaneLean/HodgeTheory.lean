import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure HodgeStructurePackage where
  complexManifold : Type u
  hodgeDecomposition : Prop
  hodgeDiamond : Prop
  hodgeSymmetry : Prop
  hodgeIndexTheorem : Prop

structure HodgeStructureEvidence (H : HodgeStructurePackage) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeDiamondClosed : H.hodgeDiamond
  hodgeSymmetryClosed : H.hodgeSymmetry
  hodgeIndexTheoremClosed : H.hodgeIndexTheorem

def HodgeStructureClosed (H : HodgeStructurePackage) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeDiamond ∧ H.hodgeSymmetry ∧ H.hodgeIndexTheorem

theorem hodge_structure_closed_from_evidence (H : HodgeStructurePackage)
    (E : HodgeStructureEvidence H) : HodgeStructureClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.hodgeDiamondClosed
      (And.intro E.hodgeSymmetryClosed E.hodgeIndexTheoremClosed))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse