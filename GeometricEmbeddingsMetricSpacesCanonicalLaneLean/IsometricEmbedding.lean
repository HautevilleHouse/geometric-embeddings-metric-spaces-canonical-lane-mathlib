import geometricEmbeddingsMetricSpacesCanonicalLaneLean.EmbeddingDistortion

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure IsometricEmbeddingPackage {E : EmbeddingDistortionPackage} where
  isometryCondition : ∀ x y : E.sourceMetricSpace,
    E.targetMetric (E.embeddingMap x) (E.embeddingMap y) = E.sourceMetric x y
  isometryConditionTerm : isometryCondition

structure IsometricEmbeddingEvidence {E : EmbeddingDistortionPackage}
    (I : IsometricEmbeddingPackage E) where
  isometryConditionClosed : I.isometryCondition

def IsometricEmbeddingClosed {E : EmbeddingDistortionPackage}
    (I : IsometricEmbeddingPackage E) : Prop :=
  I.isometryCondition

theorem isometric_embedding_closed_from_evidence
    {E : EmbeddingDistortionPackage} (I : IsometricEmbeddingPackage E)
    (Ev : IsometricEmbeddingEvidence I) : IsometricEmbeddingClosed I := by
  exact Ev.isometryConditionClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse