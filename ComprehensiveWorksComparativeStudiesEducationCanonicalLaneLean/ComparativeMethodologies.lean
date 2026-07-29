import HautevilleHouse.ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean.CurriculumFrameworks

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure ComparativeMethodologyPackage {C : CurriculumFrameworkPackage} where
  caseSelectionCriteria : Prop
  dataCollectionMethods : Prop
  analyticalProcedures : Prop
  crossCaseSynthesis : Prop
  validityMeasures : Prop

structure ComparativeMethodologyEvidence {C : CurriculumFrameworkPackage}
    (M : ComparativeMethodologyPackage C) where
  caseSelectionCriteriaClosed : M.caseSelectionCriteria
  dataCollectionMethodsClosed : M.dataCollectionMethods
  analyticalProceduresClosed : M.analyticalProcedures
  crossCaseSynthesisClosed : M.crossCaseSynthesis
  validityMeasuresClosed : M.validityMeasures

def ComparativeMethodologyClosed {C : CurriculumFrameworkPackage}
    (M : ComparativeMethodologyPackage C) : Prop :=
  M.caseSelectionCriteria ∧ M.dataCollectionMethods ∧
  M.analyticalProcedures ∧ M.crossCaseSynthesis ∧ M.validityMeasures

theorem comparative_methodology_closed_from_evidence
    {C : CurriculumFrameworkPackage} (M : ComparativeMethodologyPackage C)
    (E : ComparativeMethodologyEvidence M) : ComparativeMethodologyClosed M := by
  exact And.intro E.caseSelectionCriteriaClosed
    (And.intro E.dataCollectionMethodsClosed
      (And.intro E.analyticalProceduresClosed
        (And.intro E.crossCaseSynthesisClosed E.validityMeasuresClosed)))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
