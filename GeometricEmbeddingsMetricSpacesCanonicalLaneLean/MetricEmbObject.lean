import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure MetricEmbObject where
  space : Type u
  metric : space → space → ℝ
  metricSpace : MetricSpace space
  embeddingTarget : Type v
  embedding : space → embeddingTarget
  isEmbedding : Isometric embedding
  conclusion : Isometric embedding

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse
