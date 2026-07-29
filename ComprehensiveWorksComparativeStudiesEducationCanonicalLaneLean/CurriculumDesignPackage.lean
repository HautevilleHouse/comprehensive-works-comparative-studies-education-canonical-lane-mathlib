import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure CurriculumDesignPackage where
  learningObjectives : List String
  contentStructure : List String
  pedagogicalApproach : String
  assessmentRubric : List String
  effectivenessMeasure : Prop

def CurriculumDesignClosed (C : CurriculumDesignPackage) : Prop :=
  C.effectivenessMeasure

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
