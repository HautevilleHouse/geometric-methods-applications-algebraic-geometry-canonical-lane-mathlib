import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure AlgebraicStructurePackage where
  baseScheme : Type u
  structureSheaf : Type v
  localAffineProperty : Prop
  separatedness : Prop
  propernessOverBase : Prop
  coherentSheaves : Type w
  cohomologyTheory : Type x

def AlgebraicStructureClosed (A : AlgebraicStructurePackage) : Prop :=
  A.localAffineProperty ∧ A.separatedness ∧ A.propernessOverBase

theorem algebraic_structure_closed_from_evidence
    (A : AlgebraicStructurePackage) (h : A.localAffineProperty ∧ A.separatedness ∧ A.propernessOverBase) :
    AlgebraicStructureClosed A := h

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse