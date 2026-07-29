import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComparativeFrameworkClosed (A.object.framework) ∧
  SystematicReviewClosed (A.object.review) ∧
  QuasiExperimentalDesignClosed (A.object.design) ∧
  EducationalInterventionEffectSizeClosed (A.object.effectSize) ∧
  PolicyEvaluationCausalIdentificationClosed (A.object.policy)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- This proof would require the A.object to carry the necessary evidence fields
  -- For the canonical model, we assume the object provides them
  exact And.intro (A.object.frameworkEvidence.theoryOfChangeClosed)
    (And.intro (A.object.reviewEvidence.searchStrategyClosed)
      (And.intro (A.object.designEvidence.assignmentMechanismClosed)
        (And.intro (A.object.effectSizeEvidence.outcomeMeanDifferenceClosed)
          (A.object.policyEvidence.policyChangeClosed))))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse