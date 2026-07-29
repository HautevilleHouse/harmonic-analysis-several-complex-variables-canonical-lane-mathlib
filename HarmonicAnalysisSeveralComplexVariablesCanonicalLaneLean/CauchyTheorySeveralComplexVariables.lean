import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  boundary : domain → Prop
  holomorphicFunction : Type v
  cauchyIntegralFormula : Prop
  domainPseudoconvex : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  domainPseudoconvexClosed : C.domainPseudoconvex

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.domainPseudoconvex

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed E.domainPseudoconvexClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse