import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure SystematicReviewDataExtractionPackage where
  studyIdentifier : Type u
  extractedFeature : Type v
  extractionForm : studyIdentifier -> extractedFeature -> Prop
  doubleExtractionPerformed : Prop
  conflictResolutionProtocol : Prop
  extractionReliabilityMetric : Prop

structure SystematicReviewDataExtractionEvidence (S : SystematicReviewDataExtractionPackage) where
  doubleExtractionPerformedClosed : S.doubleExtractionPerformed
  conflictResolutionProtocolClosed : S.conflictResolutionProtocol
  extractionReliabilityMetricClosed : S.extractionReliabilityMetric

def SystematicReviewDataExtractionClosed (S : SystematicReviewDataExtractionPackage) : Prop :=
  S.doubleExtractionPerformed ∧ S.conflictResolutionProtocol ∧ S.extractionReliabilityMetric

theorem systematic_review_data_extraction_closed_from_evidence (S : SystematicReviewDataExtractionPackage) (E : SystematicReviewDataExtractionEvidence S) : SystematicReviewDataExtractionClosed S := by
  exact And.intro E.doubleExtractionPerformedClosed (And.intro E.conflictResolutionProtocolClosed E.extractionReliabilityMetricClosed)

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse