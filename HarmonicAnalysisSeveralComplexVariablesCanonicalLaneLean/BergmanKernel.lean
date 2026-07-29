import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure BergmanKernelPackage where
  domainOmega : Type u
  topologyOmega : TopologicalSpace domainOmega
  bergmanSpaceDefined : Prop
  kernelDefined : Prop
  reproducingProperty : Prop
  orthogonalProjection : Prop

structure BergmanKernelEvidence (B : BergmanKernelPackage) where
  bergmanSpaceDefinedClosed : B.bergmanSpaceDefined
  kernelDefinedClosed : B.kernelDefined
  reproducingPropertyClosed : B.reproducingProperty
  orthogonalProjectionClosed : B.orthogonalProjection

def BergmanKernelClosed (B : BergmanKernelPackage) : Prop :=
  B.bergmanSpaceDefined ∧ B.kernelDefined ∧ B.reproducingProperty ∧ B.orthogonalProjection

theorem bergman_kernel_closed_from_evidence (B : BergmanKernelPackage) (E : BergmanKernelEvidence B) : BergmanKernelClosed B := by
  exact And.intro E.bergmanSpaceDefinedClosed
    (And.intro E.kernelDefinedClosed
      (And.intro E.reproducingPropertyClosed E.orthogonalProjectionClosed))

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse