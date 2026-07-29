import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure VanishingTheoremsPackage where
  complexManifold : Type
  cohomologyGroups : Type
  kodairaVanishing : Prop
  nakanoVanishing : Prop
  leviProblemSolution : Prop

structure VanishingTheoremsEvidence (V : VanishingTheoremsPackage) where
  kodairaVanishingClosed : V.kodairaVanishing
  nakanoVanishingClosed : V.nakanoVanishing
  leviProblemSolutionClosed : V.leviProblemSolution

def VanishingTheoremsClosed (V : VanishingTheoremsPackage) : Prop :=
  V.kodairaVanishing ∧ V.nakanoVanishing ∧ V.leviProblemSolution

theorem vanishing_theorems_closed_from_evidence (V : VanishingTheoremsPackage)
    (E : VanishingTheoremsEvidence V) : VanishingTheoremsClosed V := by
  exact And.intro E.kodairaVanishingClosed (And.intro E.nakanoVanishingClosed E.leviProblemSolutionClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse