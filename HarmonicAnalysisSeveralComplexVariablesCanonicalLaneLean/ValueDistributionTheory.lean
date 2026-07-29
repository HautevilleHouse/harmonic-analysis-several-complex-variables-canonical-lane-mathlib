import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunction : Type u
  growthOrder : Type v
  nevanlinnaCharacteristic : Prop
  deficiencyRelation : Prop
  valueDistributionBounds : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  deficiencyRelationClosed : V.deficiencyRelation
  valueDistributionBoundsClosed : V.valueDistributionBounds

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.nevanlinnaCharacteristic ∧ V.deficiencyRelation ∧ V.valueDistributionBounds

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicClosed
    (And.intro E.deficiencyRelationClosed E.valueDistributionBoundsClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse