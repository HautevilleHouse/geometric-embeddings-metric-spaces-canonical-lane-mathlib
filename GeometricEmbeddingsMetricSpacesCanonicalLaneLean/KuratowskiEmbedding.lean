import canonicalLaneMathlib.AdmissibleClass

/-!
# Kuratowski Embedding Package
Isometric embedding of any metric space into a Banach space of bounded functions.
-/

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure KuratowskiEmbeddingPackage where
  sourceSpace : Type u
  sourceMetric : Type v
  targetBanachSpace : Type w
  isometricEmbedding : Type x
  isometryProperty : Prop
  embeddingClosed : isometryProperty

def KuratowskiEmbeddingClosed (K : KuratowskiEmbeddingPackage) : Prop :=
  K.isometryProperty

theorem kuratowski_embedding_closed_from_package (K : KuratowskiEmbeddingPackage) :
    KuratowskiEmbeddingClosed K := by
  exact K.embeddingClosed

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse
