import canonicalLaneMathlib.QuasiIsometricEmbeddings

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure QuasiIsometricEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceMetric : sourceSpace → sourceSpace → ℝ
  targetMetric : targetSpace → targetSpace → ℝ
  embeddingMap : sourceSpace → targetSpace
  quasiIsometryConstant : ℝ
  quasiIsometryCondition : ∀ x y : sourceSpace,
    (1/quasiIsometryConstant) * sourceMetric x y - quasiIsometryConstant ≤ targetMetric (embeddingMap x) (embeddingMap y) ∧
    targetMetric (embeddingMap x) (embeddingMap y) ≤ quasiIsometryConstant * sourceMetric x y + quasiIsometryConstant
  coarselyDense : Prop

structure QuasiIsometricEmbeddingEvidence (Q : QuasiIsometricEmbeddingPackage) where
  quasiIsometryConditionClosed : Q.quasiIsometryCondition
  coarselyDenseClosed : Q.coarselyDense

def QuasiIsometricEmbeddingClosed (Q : QuasiIsometricEmbeddingPackage) : Prop :=
  Q.quasiIsometryCondition ∧ Q.coarselyDense

theorem quasiIsometric_embedding_closed_from_evidence (Q : QuasiIsometricEmbeddingPackage)
    (E : QuasiIsometricEmbeddingEvidence Q) : QuasiIsometricEmbeddingClosed Q := by
  exact And.intro E.quasiIsometryConditionClosed E.coarselyDenseClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse