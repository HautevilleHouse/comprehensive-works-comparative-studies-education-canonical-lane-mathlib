import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure ComparativeFramework where
  works : List String
  criteria : List String
  comparisonDimension : String
  weighting : Float
  synthesisResult : Prop

def ComparativeFrameworkClosed (F : ComparativeFramework) : Prop :=
  F.synthesisResult

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
