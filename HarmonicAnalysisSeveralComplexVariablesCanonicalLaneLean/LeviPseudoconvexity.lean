import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure LeviPseudoconvexityPackage where
  domain : Type
  boundary : Type
  leviForm : Type
  pseudoconvexBoundary : Prop
  stronglyPseudoconvex : Prop

structure LeviPseudoconvexityEvidence (L : LeviPseudoconvexityPackage) where
  pseudoconvexBoundaryClosed : L.pseudoconvexBoundary
  stronglyPseudoconvexClosed : L.stronglyPseudoconvex

def LeviPseudoconvexityClosed (L : LeviPseudoconvexityPackage) : Prop :=
  L.pseudoconvexBoundary ∧ L.stronglyPseudoconvex

theorem levi_pseudoconvexity_closed_from_evidence (L : LeviPseudoconvexityPackage)
    (E : LeviPseudoconvexityEvidence L) : LeviPseudoconvexityClosed L := by
  exact And.intro E.pseudoconvexBoundaryClosed E.stronglyPseudoconvexClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse