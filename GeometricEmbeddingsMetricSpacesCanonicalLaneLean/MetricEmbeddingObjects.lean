import GeometricEmbeddingsMetricSpacesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MetricSpaceObject where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier

structure EmbeddingTarget where
  target : MetricSpaceObject
  isBanachSpace : Bool
  dimension : ℕ

structure MetricEmbeddingAdmittedObject where
  source : MetricSpaceObject
  target : EmbeddingTarget
  embedding : source.carrier → target.target.carrier
  isIsometricEmbedding : Prop
  conclusion : isIsometricEmbedding

def MetricEmbeddingWitnessClosed (O : MetricEmbeddingAdmittedObject) : Prop :=
  O.isIsometricEmbedding

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse