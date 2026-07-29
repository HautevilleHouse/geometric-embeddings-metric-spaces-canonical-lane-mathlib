import GeometricEmbeddingsMetricSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure LipschitzExtensionPackage where
  sourceSpace : MetricSpaceObject
  targetSpace : EmbeddingTarget
  subset : sourceSpace.carrier → Prop
  mapOnSubset : {x : sourceSpace.carrier // subset x} → targetSpace.target.carrier
  lipschitzConstant : ℝ
  extensionExists : Prop
  extensionPreservesLipschitz : Prop

structure LipschitzExtensionEvidence (L : LipschitzExtensionPackage) where
  extensionExistsClosed : L.extensionExists
  extensionPreservesLipschitzClosed : L.extensionPreservesLipschitz

def LipschitzExtensionClosed (L : LipschitzExtensionPackage) : Prop :=
  L.extensionExists ∧ L.extensionPreservesLipschitz

theorem lipschitz_extension_closed_from_evidence (L : LipschitzExtensionPackage)
    (E : LipschitzExtensionEvidence L) : LipschitzExtensionClosed L := by
  exact And.intro E.extensionExistsClosed E.extensionPreservesLipschitzClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse