import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure LipschitzEmbeddingPackage (M N : Type u) [MetricSpace M] [MetricSpace N] where
  embeddingMap : M → N
  lipschitzConstant : ℝ
  lipschitzBound : ∀ x y : M, dist (embeddingMap x) (embeddingMap y) ≤ lipschitzConstant * dist x y
  biLipschitzLowerBound : ∀ x y : M, dist x y ≤ lipschitzConstant * dist (embeddingMap x) (embeddingMap y)
  embeddingClosed : Prop

structure LipschitzEmbeddingEvidence {M N : Type u} [MetricSpace M] [MetricSpace N]
    (L : LipschitzEmbeddingPackage M N) where
  lipschitzBoundClosed : L.lipschitzBound
  biLipschitzLowerBoundClosed : L.biLipschitzLowerBound
  embeddingClosedClosed : L.embeddingClosed

def LipschitzEmbeddingClosed {M N : Type u} [MetricSpace M] [MetricSpace N]
    (L : LipschitzEmbeddingPackage M N) : Prop :=
  L.lipschitzBound ∧ L.biLipschitzLowerBound ∧ L.embeddingClosed

theorem lipschitz_embedding_closed_from_evidence
    {M N : Type u} [MetricSpace M] [MetricSpace N]
    (L : LipschitzEmbeddingPackage M N) (E : LipschitzEmbeddingEvidence L) :
    LipschitzEmbeddingClosed L := by
  exact And.intro E.lipschitzBoundClosed (And.intro E.biLipschitzLowerBoundClosed E.embeddingClosedClosed)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse