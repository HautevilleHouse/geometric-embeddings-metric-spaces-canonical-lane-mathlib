import geometricEmbeddingsMetricSpacesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricMetricSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  metricSpaceAxioms : MetricSpace carrier

structure GeometricAdmittedObject where
  sourceSpace : GeometricMetricSpace
  targetSpace : GeometricMetricSpace
  embedding : sourceSpace.carrier → targetSpace.carrier
  isIsometric : ∀ x y : sourceSpace.carrier,
    targetSpace.metric (embedding x) (embedding y) = sourceSpace.metric x y
  conclusion : isIsometric

def GeometricWitnessClosed (O : GeometricAdmittedObject) : Prop :=
  O.isIsometric

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse