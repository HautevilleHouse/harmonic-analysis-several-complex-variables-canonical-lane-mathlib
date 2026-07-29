import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunction : Type u
  targetSpace : Type v
  targetTopology : TopologicalSpace targetSpace
  omittedValues : Prop
  picardTheorem : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  omittedValuesClosed : V.omittedValues
  picardTheoremClosed : V.picardTheorem
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.omittedValues ∧ V.picardTheorem ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.omittedValuesClosed
    (And.intro E.picardTheoremClosed E.defectRelationClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse