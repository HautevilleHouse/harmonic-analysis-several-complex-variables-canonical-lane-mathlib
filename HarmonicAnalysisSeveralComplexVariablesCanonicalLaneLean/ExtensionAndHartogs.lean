import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean

structure ExtensionHartogsPackage where
  domain : Type u
  compactSet : domain → Prop
  holomorphicFunctionOnComplement : Type v
  extensionExists : Prop
  hartogsContinuityPrinciple : Prop

structure ExtensionHartogsEvidence (E : ExtensionHartogsPackage) where
  extensionExistsClosed : E.extensionExists
  hartogsContinuityPrincipleClosed : E.hartogsContinuityPrinciple

def ExtensionHartogsClosed (E : ExtensionHartogsPackage) : Prop :=
  E.extensionExists ∧ E.hartogsContinuityPrinciple

theorem extension_hartogs_closed_from_evidence (E : ExtensionHartogsPackage)
    (Ev : ExtensionHartogsEvidence E) : ExtensionHartogsClosed E := by
  exact And.intro Ev.extensionExistsClosed Ev.hartogsContinuityPrincipleClosed

end HarmonicAnalysisSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse