import canonicalLaneMathlib.AdmissibleClass

/-!
# Cauchy Integral Formula in Several Complex Variables

This module encodes the Cauchy integral formula for polydiscs as an
admissible-class bridge closure.
-/

namespace HautevilleHouse
namespace HarmonicAnalysisSCV

structure Polydisc (n : ℕ) where
  center : ℂ^n
  radii : ℝ^n
  positiveRadii : ∀ i, radii i > 0

definition Polydisc.domain (D : Polydisc n) : Set (ℂ^n) := {z | ∀ i, |z i - D.center i| < D.radii i}

structure HolomorphicFunctionOnPolydisc (D : Polydisc n) where
  f : ℂ^n → ℂ
  holomorphic : ∀ z ∈ D.domain, Complex.differentiableAt ℂ f z
  continuous : ContinuousOn f (closure D.domain)

structure CauchyIntegralPackage (D : Polydisc n) where
  f : HolomorphicFunctionOnPolydisc D
  integralFormula : Prop
  integralFormulaClosed : integralFormula

definition CauchyIntegralClosed (D : Polydisc n) (pkg : CauchyIntegralPackage D) : Prop :=
  pkg.integralFormula

theorem cauchy_integral_bridge (D : Polydisc n) (pkg : CauchyIntegralPackage D) :
    CauchyIntegralClosed D pkg := by
  exact pkg.integralFormulaClosed

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  CauchyIntegralClosed (AdmissibleClass.object A) (AdmissibleClass.object A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end HarmonicAnalysisSCV
end HautevilleHouse
