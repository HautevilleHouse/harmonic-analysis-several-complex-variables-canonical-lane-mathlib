import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

def ConstrainedHarmonicAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_harmonic_analysis_endgame (A : AdmissibleClass) :
    ConstrainedHarmonicAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse