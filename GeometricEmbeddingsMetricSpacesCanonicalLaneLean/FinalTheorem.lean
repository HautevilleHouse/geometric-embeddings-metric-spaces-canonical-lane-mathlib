import GeometricEmbeddingsMetricSpacesCanonicalLaneLean.MetricEmbeddingsBridge

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

def ConstrainedMetricEmbeddingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metric_embeddings_endgame (A : AdmissibleClass) :
    ConstrainedMetricEmbeddingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse
