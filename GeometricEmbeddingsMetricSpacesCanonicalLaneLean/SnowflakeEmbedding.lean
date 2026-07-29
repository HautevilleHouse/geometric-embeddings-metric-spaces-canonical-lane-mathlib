import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure SnowflakeEmbeddingPackage (M N : Type u) [MetricSpace M] [MetricSpace N] where
  embeddingMap : M → N
  exponent : ℝ
  exponentInRange : exponent ∈ Set.Ioo (0 : ℝ) 1
  snowflakeProperty : ∀ x y : M, dist (embeddingMap x) (embeddingMap y) = (dist x y) ^ exponent
  snowflakeClosed : Prop

structure SnowflakeEmbeddingEvidence {M N : Type u} [MetricSpace M] [MetricSpace N]
    (S : SnowflakeEmbeddingPackage M N) where
  exponentInRangeClosed : S.exponentInRange
  snowflakePropertyClosed : S.snowflakeProperty
  snowflakeClosedClosed : S.snowflakeClosed

def SnowflakeEmbeddingClosed {M N : Type u} [MetricSpace M] [MetricSpace N]
    (S : SnowflakeEmbeddingPackage M N) : Prop :=
  S.exponentInRange ∧ S.snowflakeProperty ∧ S.snowflakeClosed

theorem snowflake_embedding_closed_from_evidence
    {M N : Type u} [MetricSpace M] [MetricSpace N]
    (S : SnowflakeEmbeddingPackage M N) (E : SnowflakeEmbeddingEvidence S) :
    SnowflakeEmbeddingClosed S := by
  exact And.intro E.exponentInRangeClosed (And.intro E.snowflakePropertyClosed E.snowflakeClosedClosed)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse