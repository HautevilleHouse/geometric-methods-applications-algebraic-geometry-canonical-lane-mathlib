import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

def gateClosed (A : AlgebraicAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AlgebraicAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse