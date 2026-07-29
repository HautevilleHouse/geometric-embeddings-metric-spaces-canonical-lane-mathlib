import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.endpointSatisfied

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse
