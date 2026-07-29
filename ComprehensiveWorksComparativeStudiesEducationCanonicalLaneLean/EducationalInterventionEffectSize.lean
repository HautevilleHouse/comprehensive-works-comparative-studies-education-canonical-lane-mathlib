import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure EducationalInterventionEffectSizePackage where
  interventionGroup : Type
  controlGroup : Type
  outcomeMeanDifference : ℝ
  varianceEstimate : ℝ
  effectSizeMetric : String
  effectSizeValue : ℝ
  confidenceIntervalLower : ℝ
  confidenceIntervalUpper : ℝ

structure EducationalInterventionEffectSizeEvidence (E : EducationalInterventionEffectSizePackage) where
  outcomeMeanDifferenceClosed : E.outcomeMeanDifference ≠ 0
  varianceEstimateClosed : E.varianceEstimate > 0
  effectSizeComputed : E.effectSizeValue = E.outcomeMeanDifference / Real.sqrt E.varianceEstimate
  confidenceIntervalContainsEffect : E.confidenceIntervalLower ≤ E.effectSizeValue ∧ E.effectSizeValue ≤ E.confidenceIntervalUpper

def EducationalInterventionEffectSizeClosed (E : EducationalInterventionEffectSizePackage) : Prop :=
  E.outcomeMeanDifference ≠ 0 ∧ E.varianceEstimate > 0 ∧
  E.effectSizeValue = E.outcomeMeanDifference / Real.sqrt E.varianceEstimate ∧
  E.confidenceIntervalLower ≤ E.effectSizeValue ∧ E.effectSizeValue ≤ E.confidenceIntervalUpper

theorem educational_intervention_effect_size_closed_from_evidence
    (E : EducationalInterventionEffectSizePackage)
    (Ev : EducationalInterventionEffectSizeEvidence E) :
    EducationalInterventionEffectSizeClosed E := by
  refine And.intro Ev.outcomeMeanDifferenceClosed
    (And.intro Ev.varianceEstimateClosed
      (And.intro Ev.effectSizeComputed
        Ev.confidenceIntervalContainsEffect))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse