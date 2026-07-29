import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure CauchyRiemannComplexPackage where
  sheaf : Type
  dolbeaultComplex : Type
  cohomologyGroups : Type
  exactnessOnStein : Prop
  finiteDimensionalCohomology : Prop

structure CauchyRiemannComplexEvidence (C : CauchyRiemannComplexPackage) where
  exactnessOnSteinClosed : C.exactnessOnStein
  finiteDimensionalCohomologyClosed : C.finiteDimensionalCohomology

def CauchyRiemannComplexClosed (C : CauchyRiemannComplexPackage) : Prop :=
  C.exactnessOnStein ∧ C.finiteDimensionalCohomology

theorem cauchy_riemann_complex_closed_from_evidence (C : CauchyRiemannComplexPackage)
    (E : CauchyRiemannComplexEvidence C) : CauchyRiemannComplexClosed C := by
  exact And.intro E.exactnessOnSteinClosed E.finiteDimensionalCohomologyClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse