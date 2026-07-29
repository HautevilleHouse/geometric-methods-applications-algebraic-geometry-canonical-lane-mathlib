import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AlgebraicAdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AlgebraicAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse