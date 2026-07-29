import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricEmbeddingsMetricSpacesCanonicalLaneLean

structure GeometricAdmittedObject where
  sourceSpace : Type u
  targetSpace : Type v
  embedding : sourceSpace → targetSpace
  isIsometric : Prop
  conclusion : isIsometric

def GeometricWitnessClosed (O : GeometricAdmittedObject) : Prop :=
  O.isIsometric

structure ClassicalTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

end GeometricEmbeddingsMetricSpacesCanonicalLaneLean
end HautevilleHouse