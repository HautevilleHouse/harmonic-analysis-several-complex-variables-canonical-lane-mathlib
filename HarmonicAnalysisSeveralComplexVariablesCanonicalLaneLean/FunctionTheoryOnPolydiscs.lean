import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure FunctionTheoryOnPolydiscsPackage where
  polydisc : Type
  hardySpaces : Type
  cauchyIntegralFormula : Prop
  maximumPrinciple : Prop
  boundaryValues : Prop

structure FunctionTheoryOnPolydiscsEvidence (F : FunctionTheoryOnPolydiscsPackage) where
  cauchyIntegralFormulaClosed : F.cauchyIntegralFormula
  maximumPrincipleClosed : F.maximumPrinciple
  boundaryValuesClosed : F.boundaryValues

def FunctionTheoryOnPolydiscsClosed (F : FunctionTheoryOnPolydiscsPackage) : Prop :=
  F.cauchyIntegralFormula ∧ F.maximumPrinciple ∧ F.boundaryValues

theorem function_theory_on_polydiscs_closed_from_evidence (F : FunctionTheoryOnPolydiscsPackage)
    (E : FunctionTheoryOnPolydiscsEvidence F) : FunctionTheoryOnPolydiscsClosed F := by
  exact And.intro E.cauchyIntegralFormulaClosed (And.intro E.maximumPrincipleClosed E.boundaryValuesClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse