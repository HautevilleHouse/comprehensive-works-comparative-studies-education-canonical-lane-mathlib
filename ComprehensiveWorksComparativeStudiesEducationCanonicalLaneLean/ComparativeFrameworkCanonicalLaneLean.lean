import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure ComparativeFrameworkPackage where
  targetDomain : String
  targetPopulation : String
  outcomeOfInterest : String
  theoryOfChange : Prop
  comparisonUnits : Type
  controlCondition : Prop

structure ComparativeFrameworkEvidence (C : ComparativeFrameworkPackage) where
  theoryOfChangeClosed : C.theoryOfChange
  controlConditionClosed : C.controlCondition

def ComparativeFrameworkClosed (C : ComparativeFrameworkPackage) : Prop :=
  C.theoryOfChange ∧ C.controlCondition

theorem comparative_framework_closed_from_evidence
    (C : ComparativeFrameworkPackage) (E : ComparativeFrameworkEvidence C) :
    ComparativeFrameworkClosed C := by
  exact And.intro E.theoryOfChangeClosed E.controlConditionClosed

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse