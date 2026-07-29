import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure HarmonicAnalysisAdmittedObject where
  object : Type u
  complexStructure : Prop
  holomorphicFunctions : Prop
  analyticProperty : Prop
  conclusion : analyticProperty

structure HarmonicAnalysisAdmissibleClass where
  object : HarmonicAnalysisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : HarmonicAnalysisAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse