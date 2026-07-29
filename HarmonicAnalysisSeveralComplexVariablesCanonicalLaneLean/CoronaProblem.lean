import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariables

structure CoronaProblemPackage where
  sheaf : Type u
  holomorphicFunctions : Type v
  denseStructure : Prop
  approximationProperty : Prop
  coronaTheoremStatement : Prop

structure CoronaProblemEvidence (C : CoronaProblemPackage) where
  denseStructureClosed : C.denseStructure
  approximationPropertyClosed : C.approximationProperty
  coronaTheoremStatementClosed : C.coronaTheoremStatement

def CoronaProblemClosed (C : CoronaProblemPackage) : Prop :=
  C.denseStructure ∧ C.approximationProperty ∧ C.coronaTheoremStatement

theorem corona_problem_closed_from_evidence (C : CoronaProblemPackage)
    (E : CoronaProblemEvidence C) : CoronaProblemClosed C :=
  And.intro E.denseStructureClosed
    (And.intro E.approximationPropertyClosed E.coronaTheoremStatementClosed)

end HarmonicAnalysisSeveralComplexVariables
end HautevilleHouse