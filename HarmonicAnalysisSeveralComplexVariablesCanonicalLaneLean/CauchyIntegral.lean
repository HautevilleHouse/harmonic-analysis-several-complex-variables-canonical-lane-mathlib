import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariables

structure CauchyIntegralPackage where
  domain : Type u
  dimension : Nat
  boundary : Type v
  cauchyKernel : Type w
  integralRepresentsHolomorphic : Prop
  kernelSingularityStructure : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralRepresentsHolomorphicClosed : C.integralRepresentsHolomorphic
  kernelSingularityStructureClosed : C.kernelSingularityStructure

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralRepresentsHolomorphic ∧ C.kernelSingularityStructure

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C :=
  And.intro E.integralRepresentsHolomorphicClosed E.kernelSingularityStructureClosed

end HarmonicAnalysisSeveralComplexVariables
end HautevilleHouse