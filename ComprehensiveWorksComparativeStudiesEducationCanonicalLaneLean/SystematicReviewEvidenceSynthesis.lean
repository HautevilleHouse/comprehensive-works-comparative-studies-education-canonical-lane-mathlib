import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure SystematicReviewPackage where
  searchStrategy : Prop
  inclusionCriteria : Prop
  dataExtractionForm : Type
  riskOfBiasAssessment : Prop
  metaAnalysisConducted : Prop

structure SystematicReviewEvidence (S : SystematicReviewPackage) where
  searchStrategyClosed : S.searchStrategy
  inclusionCriteriaClosed : S.inclusionCriteria
  riskOfBiasAssessmentClosed : S.riskOfBiasAssessment
  metaAnalysisConductedClosed : S.metaAnalysisConducted

def SystematicReviewClosed (S : SystematicReviewPackage) : Prop :=
  S.searchStrategy ∧ S.inclusionCriteria ∧
  S.riskOfBiasAssessment ∧ S.metaAnalysisConducted

theorem systematic_review_closed_from_evidence
    (S : SystematicReviewPackage) (E : SystematicReviewEvidence S) :
    SystematicReviewClosed S := by
  exact And.intro E.searchStrategyClosed
    (And.intro E.inclusionCriteriaClosed
      (And.intro E.riskOfBiasAssessmentClosed
        E.metaAnalysisConductedClosed))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse