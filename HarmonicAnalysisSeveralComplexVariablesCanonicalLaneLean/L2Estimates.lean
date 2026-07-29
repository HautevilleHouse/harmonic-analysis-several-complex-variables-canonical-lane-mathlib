import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariables

structure L2EstimatesPackage where
  domain : Type u
  weight : Type v
  normEstimate : Prop
  regularityUnderlying : Prop
  applicationToExistence : Prop

structure L2EstimatesEvidence (L : L2EstimatesPackage) where
  normEstimateClosed : L.normEstimate
  regularityUnderlyingClosed : L.regularityUnderlying
  applicationToExistenceClosed : L.applicationToExistence

def L2EstimatesClosed (L : L2EstimatesPackage) : Prop :=
  L.normEstimate ∧ L.regularityUnderlying ∧ L.applicationToExistence

theorem l2_estimates_closed_from_evidence (L : L2EstimatesPackage)
    (E : L2EstimatesEvidence L) : L2EstimatesClosed L :=
  And.intro E.normEstimateClosed
    (And.intro E.regularityUnderlyingClosed E.applicationToExistenceClosed)

end HarmonicAnalysisSeveralComplexVariables
end HautevilleHouse