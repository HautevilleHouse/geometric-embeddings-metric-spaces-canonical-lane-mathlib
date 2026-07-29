import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure IsometricEmbeddingPackage (M N : Type u) [MetricSpace M] [MetricSpace N] where
  embeddingMap : M → N
  distancePreserving : ∀ x y : M, dist (embeddingMap x) (embeddingMap y) = dist x y
  isometryImageClosed : Prop

structure IsometricEmbeddingEvidence {M N : Type u} [MetricSpace M] [MetricSpace N]
    (I : IsometricEmbeddingPackage M N) where
  embeddingMapClosed : I.embeddingMap = I.embeddingMap
  distancePreservingClosed : I.distancePreserving
  isometryImageClosedClosed : I.isometryImageClosed

def IsometricEmbeddingClosed {M N : Type u} [MetricSpace M] [MetricSpace N]
    (I : IsometricEmbeddingPackage M N) : Prop :=
  I.distancePreserving ∧ I.isometryImageClosed

theorem isometric_embedding_closed_from_evidence
    {M N : Type u} [MetricSpace M] [MetricSpace N]
    (I : IsometricEmbeddingPackage M N) (E : IsometricEmbeddingEvidence I) :
    IsometricEmbeddingClosed I := by
  exact And.intro E.distancePreservingClosed E.isometryImageClosedClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse