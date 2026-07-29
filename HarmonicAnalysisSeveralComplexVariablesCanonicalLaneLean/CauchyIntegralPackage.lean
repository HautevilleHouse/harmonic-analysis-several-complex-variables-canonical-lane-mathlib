import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type
  boundary : Type
  kernel : Type
  integralFormula : Prop
  holomorphyFromKernel : Prop
  kernelClosed : kernel
  integralFormulaClosed : integralFormula
  holomorphyFromKernelClosed : holomorphyFromKernel

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralFormulaClosed : C.integralFormulaClosed
  holomorphyFromKernelClosed : C.holomorphyFromKernelClosed

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralFormula ∧ C.holomorphyFromKernel

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.integralFormulaClosed E.holomorphyFromKernelClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse