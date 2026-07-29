import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure BridgelandStabilityPackage where
  triangulatedCategory : Type u
  heart : Type v
  centralCharge : Type w
  slicing : Type x
  harderNarasimhanProperty : Prop
  wallCrossingStructure : Prop
  stabilityConditionsNonempty : Prop
  heartAbelian : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse