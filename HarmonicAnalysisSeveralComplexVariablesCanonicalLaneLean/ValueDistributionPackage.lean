import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure ValueDistributionPackage where
  targetSpace : Type
  holomorphicMap : Type
  defectRelation : Prop
  growthEstimate : Prop
  defectRelationClosed : defectRelation
  growthEstimateClosed : growthEstimate

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  defectRelationClosed : V.defectRelationClosed
  growthEstimateClosed : V.growthEstimateClosed

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.defectRelation ∧ V.growthEstimate

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.defectRelationClosed E.growthEstimateClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse