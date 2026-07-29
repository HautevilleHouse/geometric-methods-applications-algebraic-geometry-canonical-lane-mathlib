import GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  algebraicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "geometric-methods-applications-algebraic-geometry",
    theoremName := "geometric-methods-applications-algebraic-geometry",
    theoremObject := "Algebraic geometry universal properties via geometric methods",
    classicalBoundary := "Classical unrestricted boundary outside the algebraic constrained closure.",
    algebraicConstrainedStatement := "Algebraic constrained theorem: for any admissible class, the constrained geometric closure holds.",
    certificateLane := "algebraic_constrained",
    carriedRemainder := "The unrestricted classical algebraic geometry statements remain outside the algebraic constrained lane."
  }

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
