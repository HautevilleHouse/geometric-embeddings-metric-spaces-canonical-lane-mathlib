import canonicalLaneMathlib.BiLipschitzEmbeddings

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure BiLipschitzEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceMetric : sourceSpace → sourceSpace → ℝ
  targetMetric : targetSpace → targetSpace → ℝ
  embeddingMap : sourceSpace → targetSpace
  lowerConstant : ℝ
  upperConstant : ℝ
  lowerCondition : ∀ x y : sourceSpace, sourceMetric x y ≤ lowerConstant * targetMetric (embeddingMap x) (embeddingMap y)
  upperCondition : ∀ x y : sourceSpace, targetMetric (embeddingMap x) (embeddingMap y) ≤ upperConstant * sourceMetric x y
  embeddingSurjective : Prop

structure BiLipschitzEmbeddingEvidence (B : BiLipschitzEmbeddingPackage) where
  lowerConditionClosed : B.lowerCondition
  upperConditionClosed : B.upperCondition
  embeddingSurjectiveClosed : B.embeddingSurjective

def BiLipschitzEmbeddingClosed (B : BiLipschitzEmbeddingPackage) : Prop :=
  B.lowerCondition ∧ B.upperCondition ∧ B.embeddingSurjective

theorem biLipschitz_embedding_closed_from_evidence (B : BiLipschitzEmbeddingPackage)
    (E : BiLipschitzEmbeddingEvidence B) : BiLipschitzEmbeddingClosed B := by
  exact And.intro E.lowerConditionClosed (And.intro E.upperConditionClosed E.embeddingSurjectiveClosed)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse