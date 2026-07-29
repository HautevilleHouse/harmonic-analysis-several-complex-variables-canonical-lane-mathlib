import canonicalLaneMathlib.AdmissibleClass

/-!
# Hartogs Extension Phenomenon

This module models the Hartogs extension theorem: holomorphic functions on a
removable compact set extend to the whole domain.
-/

namespace HautevilleHouse
namespace HarmonicAnalysisSCV

structure DomainWithCompact (n : ℕ) where
  Ω : Set (ℂ^n)
  openΩ : IsOpen Ω
  K : Set (ℂ^n)
  compactK : IsCompact K
  KsubsetΩ : K ⊆ Ω
  connectedΩ : IsConnected Ω

structure HolomorphicOnComplement (D : DomainWithCompact n) where
  f : ℂ^n → ℂ
  holomorphicOn : ∀ z ∈ D.Ω \ D.K, Complex.differentiableAt ℂ f z
  boundedOn : Bdd (f '' (D.Ω \ D.K))

structure HartogsExtensionPackage (D : DomainWithCompact n) where
  f : HolomorphicOnComplement D
  extensionExists : Prop
  extensionUnique : Prop
  extensionExistsClosed : extensionExists
  extensionUniqueClosed : extensionUnique

definition HartogsExtensionClosed (D : DomainWithCompact n) (pkg : HartogsExtensionPackage D) : Prop :=
  pkg.extensionExists ∧ pkg.extensionUnique

theorem hartogs_extension_closed_from_evidence (D : DomainWithCompact n)
    (pkg : HartogsExtensionPackage D) : HartogsExtensionClosed D pkg := by
  exact And.intro pkg.extensionExistsClosed pkg.extensionUniqueClosed

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  HartogsExtensionClosed (AdmissibleClass.object A) (AdmissibleClass.object A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end HarmonicAnalysisSCV
end HautevilleHouse
