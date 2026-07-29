import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.AlgebraicStructurePackage

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure UniversalPropertyPackage {S : AlgebraicStructurePackage} where
  fiberProduct : Type u
  baseChange : Type v
  flatBaseChangePreservesProperties : Prop
  fiberProductExists : Prop
  baseChangeComposition : Prop

def UniversalPropertyClosed {S : AlgebraicStructurePackage} (U : UniversalPropertyPackage S) : Prop :=
  U.fiberProductExists ∧ U.baseChangeComposition ∧ U.flatBaseChangePreservesProperties

theorem universal_property_closed_from_evidence
    {S : AlgebraicStructurePackage} (U : UniversalPropertyPackage S)
    (h : U.fiberProductExists ∧ U.baseChangeComposition ∧ U.flatBaseChangePreservesProperties) :
    UniversalPropertyClosed U := h

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse