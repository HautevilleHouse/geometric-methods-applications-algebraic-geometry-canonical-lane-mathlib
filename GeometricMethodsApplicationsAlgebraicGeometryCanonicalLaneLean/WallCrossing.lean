import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure WallCrossingPackage where
  stabilitySpace : Type u
  wallAndChamberStructure : Type v
  crossingFormula : Prop
  moduliSpaceInvariant : Prop
  predictJumps : Prop
  crossingFormulaClosed : crossingFormula
  moduliSpaceInvariantClosed : moduliSpaceInvariant
  predictJumpsClosed : predictJumps

def GateClosed {A : AdmissibleClass} (W : WallCrossingPackage) : Prop :=
  W.crossingFormula ∧ W.moduliSpaceInvariant ∧ W.predictJumps

theorem gate_closed_from_evidence (W : WallCrossingPackage) : GateClosed W :=
  And.intro W.crossingFormulaClosed (And.intro W.moduliSpaceInvariantClosed W.predictJumpsClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse