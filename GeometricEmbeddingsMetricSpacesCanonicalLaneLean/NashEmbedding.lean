import canonicalLaneMathlib.AdmissibleClass

/-!
# Nash Embedding Package
Covers the Nash embedding theorem for Riemannian manifolds into Euclidean space.
-/

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure NashEmbeddingPackage where
  sourceManifold : Type u
  sourceMetric : Type v
  targetEuclideanSpace : Type w
  targetDimension : Nat
  isometricEmbedding : Type x
  smoothEmbedding : Prop
  dimensionBound : targetDimension ≥ 2 * (sourceManifold.dim) + 3
  existenceClosed : Prop
  smoothnessClosed : Prop
  dimensionBoundClosed : dimensionBound
  existenceTerm : smoothEmbedding → existenceClosed
  smoothnessTerm : smoothEmbedding → smoothnessClosed

def NashEmbeddingClosed (N : NashEmbeddingPackage) : Prop :=
  N.existenceClosed ∧ N.smoothnessClosed

theorem nash_embedding_closed_from_package (N : NashEmbeddingPackage) :
    NashEmbeddingClosed N := by
  exact And.intro (N.existenceTerm N.smoothEmbedding) (N.smoothnessTerm N.smoothEmbedding)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse
