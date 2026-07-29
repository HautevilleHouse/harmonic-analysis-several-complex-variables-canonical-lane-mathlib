import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure AnalyticContinuationPackage where
  domainOmega : Type u
  topologyOmega : TopologicalSpace domainOmega
  initialFunctionDefined : Prop
  continuationDomain : Type v
  continuationTopology : TopologicalSpace continuationDomain
  continuationExists : Prop
  uniquenessOfContinuation : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  initialFunctionDefinedClosed : A.initialFunctionDefined
  continuationExistsClosed : A.continuationExists
  uniquenessOfContinuationClosed : A.uniquenessOfContinuation

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.initialFunctionDefined ∧ A.continuationExists ∧ A.uniquenessOfContinuation

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.initialFunctionDefinedClosed
    (And.intro E.continuationExistsClosed E.uniquenessOfContinuationClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse