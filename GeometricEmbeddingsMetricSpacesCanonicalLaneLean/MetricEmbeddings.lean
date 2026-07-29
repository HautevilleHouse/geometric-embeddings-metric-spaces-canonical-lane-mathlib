import canonicalLaneMathlib.MetricEmbeddings

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure MetricEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceMetric : sourceSpace → sourceSpace → ℝ
  targetMetric : targetSpace → targetSpace → ℝ
  embeddingMap : sourceSpace → targetSpace
  isIsometric : ∀ x y : sourceSpace, targetMetric (embeddingMap x) (embeddingMap y) = sourceMetric x y
  embeddingContinuous : Prop

structure MetricEmbeddingEvidence (M : MetricEmbeddingPackage) where
  isIsometricClosed : M.isIsometric
  embeddingContinuousClosed : M.embeddingContinuous

def MetricEmbeddingClosed (M : MetricEmbeddingPackage) : Prop :=
  M.isIsometric ∧ M.embeddingContinuous

theorem metric_embedding_closed_from_evidence (M : MetricEmbeddingPackage)
    (E : MetricEmbeddingEvidence M) : MetricEmbeddingClosed M := by
  exact And.intro E.isIsometricClosed E.embeddingContinuousClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse