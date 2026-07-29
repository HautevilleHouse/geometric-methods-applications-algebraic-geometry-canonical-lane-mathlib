import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean

structure DerivedCategoryPackage where
  derivedCategory : Type u
  derivedFunctors : Prop
  spectralSequences : Prop
  derivedMoritaTheory : Prop
  homologicalMirrorSymmetry : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  derivedFunctorsClosed : D.derivedFunctors
  spectralSequencesClosed : D.spectralSequences
  derivedMoritaTheoryClosed : D.derivedMoritaTheory
  homologicalMirrorSymmetryClosed : D.homologicalMirrorSymmetry

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.derivedFunctors ∧ D.spectralSequences ∧ D.derivedMoritaTheory ∧ D.homologicalMirrorSymmetry

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.derivedFunctorsClosed
    (And.intro E.spectralSequencesClosed
      (And.intro E.derivedMoritaTheoryClosed E.homologicalMirrorSymmetryClosed))

end GeometricMethodsApplicationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse