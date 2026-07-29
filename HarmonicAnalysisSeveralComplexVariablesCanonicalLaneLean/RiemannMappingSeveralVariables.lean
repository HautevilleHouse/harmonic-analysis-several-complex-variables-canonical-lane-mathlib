import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure RiemannMappingPackage where
  domainOmega : Type u
  topologyOmega : TopologicalSpace domainOmega
  simplyConnected : Prop
  biholomorphicMapToBall : Prop
  mappingExists : Prop
  mappingUniqueUpToAutomorphism : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  biholomorphicMapToBallClosed : R.biholomorphicMapToBall
  mappingExistsClosed : R.mappingExists
  mappingUniqueUpToAutomorphismClosed : R.mappingUniqueUpToAutomorphism

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.biholomorphicMapToBall ∧ R.mappingExists ∧ R.mappingUniqueUpToAutomorphism

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.biholomorphicMapToBallClosed
      (And.intro E.mappingExistsClosed E.mappingUniqueUpToAutomorphismClosed))

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse