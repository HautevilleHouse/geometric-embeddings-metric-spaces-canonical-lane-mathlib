import geometricEmbeddingsMetricSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure EmbeddingDistortionPackage where
  sourceMetricSpace : Type u
  targetMetricSpace : Type v
  sourceMetric : sourceMetricSpace → sourceMetricSpace → ℝ
  targetMetric : targetMetricSpace → targetMetricSpace → ℝ
  embeddingMap : sourceMetricSpace → targetMetricSpace
  lipschitzConstant : ℝ
  bilipschitzLowerBound : ℝ
  distortionBounded : Prop
  distortionBoundedTerm : distortionBounded

structure EmbeddingDistortionEvidence (E : EmbeddingDistortionPackage) where
  distortionBoundedClosed : E.distortionBounded

def EmbeddingDistortionClosed (E : EmbeddingDistortionPackage) : Prop :=
  E.distortionBounded

theorem embedding_distortion_closed_from_evidence
    (E : EmbeddingDistortionPackage) (Ev : EmbeddingDistortionEvidence E) :
    EmbeddingDistortionClosed E := by
  exact Ev.distortionBoundedClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse