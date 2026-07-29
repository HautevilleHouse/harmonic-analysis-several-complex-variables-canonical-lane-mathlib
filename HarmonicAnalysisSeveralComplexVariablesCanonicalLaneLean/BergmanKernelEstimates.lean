import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure BergmanKernelEstimatesPackage where
  domain : Type
  kernelFunction : Type
  lowerBound : Prop
  upperBound : Prop
  boundaryAsymptotics : Prop

structure BergmanKernelEstimatesEvidence (B : BergmanKernelEstimatesPackage) where
  lowerBoundClosed : B.lowerBound
  upperBoundClosed : B.upperBound
  boundaryAsymptoticsClosed : B.boundaryAsymptotics

def BergmanKernelEstimatesClosed (B : BergmanKernelEstimatesPackage) : Prop :=
  B.lowerBound ∧ B.upperBound ∧ B.boundaryAsymptotics

theorem bergman_kernel_estimates_closed_from_evidence (B : BergmanKernelEstimatesPackage)
    (E : BergmanKernelEstimatesEvidence B) : BergmanKernelEstimatesClosed B := by
  exact And.intro E.lowerBoundClosed (And.intro E.upperBoundClosed E.boundaryAsymptoticsClosed)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse