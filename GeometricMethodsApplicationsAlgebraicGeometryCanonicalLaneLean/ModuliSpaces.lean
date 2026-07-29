import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure ModuliSpacePackage where
  moduliStacks : Prop
  coarseModuliSpace : Prop
  deformationTheory : Prop
  stabilityConditions : Prop
  compactification : Prop

structure ModuliSpaceEvidence (M : ModuliSpacePackage) where
  moduliStacksClosed : M.moduliStacks
  coarseModuliSpaceClosed : M.coarseModuliSpace
  deformationTheoryClosed : M.deformationTheory
  stabilityConditionsClosed : M.stabilityConditions
  compactificationClosed : M.compactification

def ModuliSpaceClosed (M : ModuliSpacePackage) : Prop :=
  M.moduliStacks ∧ M.coarseModuliSpace ∧ M.deformationTheory ∧ M.stabilityConditions ∧ M.compactification

theorem moduli_space_closed_from_evidence (M : ModuliSpacePackage)
    (E : ModuliSpaceEvidence M) : ModuliSpaceClosed M := by
  exact And.intro E.moduliStacksClosed
    (And.intro E.coarseModuliSpaceClosed
      (And.intro E.deformationTheoryClosed
        (And.intro E.stabilityConditionsClosed E.compactificationClosed)))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse