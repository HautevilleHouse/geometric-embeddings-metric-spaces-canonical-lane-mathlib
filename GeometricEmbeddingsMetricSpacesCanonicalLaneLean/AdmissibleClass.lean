import geometricEmbeddingsMetricSpacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : GeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse