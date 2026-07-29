import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Type u
  point : simplyConnectedDomain
  conformalMapToUnitDisc : Type v
  mappingExists : Prop
  uniquenessGivenNormalization : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  mappingExistsClosed : R.mappingExists
  uniquenessGivenNormalizationClosed : R.uniquenessGivenNormalization

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.mappingExists ∧ R.uniquenessGivenNormalization

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.mappingExistsClosed E.uniquenessGivenNormalizationClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse