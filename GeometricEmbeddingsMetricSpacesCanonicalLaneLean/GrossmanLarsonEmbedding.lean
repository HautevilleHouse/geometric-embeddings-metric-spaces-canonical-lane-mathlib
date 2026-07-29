import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure GrossmanLarsonEmbeddingPackage (M : Type u) [MetricSpace M] where
  targetGraph : Type v
  graphMetric : MetricSpace targetGraph
  embeddingMap : M → targetGraph
  distortionBounded : ∃ C : ℝ, ∀ x y : M, dist x y ≤ dist (embeddingMap x) (embeddingMap y) ∧ dist (embeddingMap x) (embeddingMap y) ≤ C * dist x y
  graphIsFinite : Fintype targetGraph
  glEmbeddingClosed : Prop

structure GrossmanLarsonEmbeddingEvidence {M : Type u} [MetricSpace M]
    (G : GrossmanLarsonEmbeddingPackage M) where
  distortionBoundedClosed : G.distortionBounded
  graphIsFiniteClosed : G.graphIsFinite
  glEmbeddingClosedClosed : G.glEmbeddingClosed

def GrossmanLarsonEmbeddingClosed {M : Type u} [MetricSpace M]
    (G : GrossmanLarsonEmbeddingPackage M) : Prop :=
  G.distortionBounded ∧ G.graphIsFinite ∧ G.glEmbeddingClosed

theorem grossman_larson_embedding_closed_from_evidence
    {M : Type u} [MetricSpace M] (G : GrossmanLarsonEmbeddingPackage M)
    (E : GrossmanLarsonEmbeddingEvidence G) : GrossmanLarsonEmbeddingClosed G := by
  exact And.intro E.distortionBoundedClosed
    (And.intro E.graphIsFiniteClosed E.glEmbeddingClosedClosed)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse