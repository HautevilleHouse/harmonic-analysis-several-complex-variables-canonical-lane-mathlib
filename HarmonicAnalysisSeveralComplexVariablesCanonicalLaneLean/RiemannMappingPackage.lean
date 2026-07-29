import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean.CauchyIntegralPackage

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure RiemannMappingPackage {C : CauchyIntegralPackage} where
  sourceDomain : Type
  targetDomain : Type
  biholomorphismExists : Prop
  boundaryCorrespondence : Prop
  biholomorphismExistsClosed : biholomorphismExists
  boundaryCorrespondenceClosed : boundaryCorrespondence

structure RiemannMappingEvidence {C : CauchyIntegralPackage}
    (R : RiemannMappingPackage C) where
  biholomorphismExistsClosed : R.biholomorphismExistsClosed
  boundaryCorrespondenceClosed : R.boundaryCorrespondenceClosed

def RiemannMappingClosed {C : CauchyIntegralPackage} (R : RiemannMappingPackage C) : Prop :=
  R.biholomorphismExists ∧ R.boundaryCorrespondence

theorem riemann_mapping_closed_from_evidence {C : CauchyIntegralPackage}
    (R : RiemannMappingPackage C) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.biholomorphismExistsClosed E.boundaryCorrespondenceClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse