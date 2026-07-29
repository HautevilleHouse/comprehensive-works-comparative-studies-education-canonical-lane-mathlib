import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure PedagogicalInterventionAnalysis where
  interventionDesign : String
  implementationContext : String
  controlGroupMetrics : Prop
  experimentalGroupMetrics : Prop
  effectSizeEstimated : Float
  significanceDetermined : Prop
  analysisClosed : Prop

def PedagogicalInterventionClosed (A : PedagogicalInterventionAnalysis) : Prop :=
  A.analysisClosed

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
