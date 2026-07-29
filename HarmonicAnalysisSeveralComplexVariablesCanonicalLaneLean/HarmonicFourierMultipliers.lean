import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure FourierMultiplierPackage where
  group : Type u
  multiplierFunction : Type v
  boundednessOnL2 : Prop
  hormanderCondition : Prop
  multiplierOperator : Type w

structure FourierMultiplierEvidence (F : FourierMultiplierPackage) where
  boundednessOnL2Closed : F.boundednessOnL2
  hormanderConditionClosed : F.hormanderCondition

def FourierMultiplierClosed (F : FourierMultiplierPackage) : Prop :=
  F.boundednessOnL2 ∧ F.hormanderCondition

theorem fourier_multiplier_closed_from_evidence (F : FourierMultiplierPackage)
    (E : FourierMultiplierEvidence F) : FourierMultiplierClosed F := by
  exact And.intro E.boundednessOnL2Closed E.hormanderConditionClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse