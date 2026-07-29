import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure AnalyticContinuationPackage where
  initialDomain : Type
  extendedDomain : Type
  functionDefined : Prop
  continuationUnique : Prop
  continuationExists : Prop
  functionDefinedClosed : functionDefined
  continuationUniqueClosed : continuationUnique
  continuationExistsClosed : continuationExists

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  functionDefinedClosed : A.functionDefinedClosed
  continuationUniqueClosed : A.continuationUniqueClosed
  continuationExistsClosed : A.continuationExistsClosed

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.functionDefined ∧ A.continuationUnique ∧ A.continuationExists

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.functionDefinedClosed
    (And.intro E.continuationUniqueClosed E.continuationExistsClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse