import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed {A : AdmissibleClass} : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedGeometricMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed (A:=A) ∧ gateClosed A

theorem constrained_geometric_methods_endgame (A : AdmissibleClass) :
    ConstrainedGeometricMethodsClosure A := by
  refine And.intro ?_ (A.gateWitness)
  exact A.object.conclusion

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse