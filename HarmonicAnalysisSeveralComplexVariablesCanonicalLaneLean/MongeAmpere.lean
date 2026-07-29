import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariables

structure MongeAmperePackage where
  domain : Type u
  plurisubharmonicFunction : Type v
  mongeAmpereOperator : Type w
  weakSolutionExists : Prop
  comparisonPrinciple : Prop

structure MongeAmpereEvidence (M : MongeAmperePackage) where
  weakSolutionExistsClosed : M.weakSolutionExists
  comparisonPrincipleClosed : M.comparisonPrinciple

def MongeAmpereClosed (M : MongeAmperePackage) : Prop :=
  M.weakSolutionExists ∧ M.comparisonPrinciple

theorem monge_ampere_closed_from_evidence (M : MongeAmperePackage)
    (E : MongeAmpereEvidence M) : MongeAmpereClosed M :=
  And.intro E.weakSolutionExistsClosed E.comparisonPrincipleClosed

end HarmonicAnalysisSeveralComplexVariables
end HautevilleHouse