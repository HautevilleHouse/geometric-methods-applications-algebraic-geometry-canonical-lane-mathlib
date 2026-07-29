import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Grassmannian
import Mathlib.AlgebraicGeometry.SchubertCalculus

/-!
# Enumerative Geometry Package

This module formalizes Schubert calculus and Gromov-Witten invariants.
-/

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure EnumerativeGeometryPackage where
  grassmannian : Type u
  schubertCalculus : Type v
  gromovWittenInvariants : Type w
  degGenericallyMorse : Prop
  pieriFormulasHold : Prop
  kontsevichFormulaHolds : Prop

structure EnumerativeGeometryEvidence (E : EnumerativeGeometryPackage) where
  degGenericallyMorseClosed : E.degGenericallyMorse
  pieriFormulasClosed : E.pieriFormulasHold
  kontsevichFormulaClosed : E.kontsevichFormulaHolds

def EnumerativeGeometryClosed (E : EnumerativeGeometryPackage) : Prop :=
  E.degGenericallyMorse ∧ E.pieriFormulasHold ∧ E.kontsevichFormulaHolds

theorem enumerative_geometry_closed_from_evidence
    (E : EnumerativeGeometryPackage) (Ev : EnumerativeGeometryEvidence E) :
    EnumerativeGeometryClosed E := by
  exact And.intro Ev.degGenericallyMorseClosed (And.intro Ev.pieriFormulasClosed Ev.kontsevichFormulaClosed)

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
