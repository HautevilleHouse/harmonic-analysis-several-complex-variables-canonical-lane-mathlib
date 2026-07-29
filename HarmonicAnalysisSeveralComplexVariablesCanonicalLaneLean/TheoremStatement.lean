import HautevilleHouse.HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String := "harmonic-analysis-scv-canonical-lane"
  theoremName : String := "Cauchy Integral Theorem (Several Complex Variables)"
  theoremObject : String := "holomorphic functions on pseudoconvex domains"
  classicalBoundary : String := "classical analysis"
  manifoldConstrainedStatement : String := "Cauchy integral representation holds for holomorphic functions on smoothly bounded pseudoconvex domains"
  certificateLane : String := "manifold_constrained"
  carriedRemainder : String := "Cauchy integral representation for general domains"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "harmonic-analysis-scv-canonical-lane",
  theoremName := "Cauchy Integral Theorem (Several Complex Variables)",
  theoremObject := "holomorphic functions on pseudoconvex domains",
  classicalBoundary := "classical analysis",
  manifoldConstrainedStatement := "Cauchy integral representation holds for holomorphic functions on smoothly bounded pseudoconvex domains",
  certificateLane := "manifold_constrained",
  carriedRemainder := "Cauchy integral representation for general domains"
}

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
