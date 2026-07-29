import geometricEmbeddingsMetricSpacesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse