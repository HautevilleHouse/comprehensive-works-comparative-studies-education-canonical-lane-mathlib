import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure QuasiExperimentalDesignPackage where
  assignmentMechanism : Prop
  preTreatmentMeasurements : Prop
  postTreatmentMeasurements : Prop
  comparisonGroup : Prop
  threatsToInternalValidity : Prop

structure QuasiExperimentalDesignEvidence (Q : QuasiExperimentalDesignPackage) where
  assignmentMechanismClosed : Q.assignmentMechanism
  preTreatmentMeasurementsClosed : Q.preTreatmentMeasurements
  postTreatmentMeasurementsClosed : Q.postTreatmentMeasurements
  comparisonGroupClosed : Q.comparisonGroup

def QuasiExperimentalDesignClosed (Q : QuasiExperimentalDesignPackage) : Prop :=
  Q.assignmentMechanism ∧ Q.preTreatmentMeasurements ∧
  Q.postTreatmentMeasurements ∧ Q.comparisonGroup

theorem quasi_experimental_design_closed_from_evidence
    (Q : QuasiExperimentalDesignPackage) (E : QuasiExperimentalDesignEvidence Q) :
    QuasiExperimentalDesignClosed Q := by
  exact And.intro E.assignmentMechanismClosed
    (And.intro E.preTreatmentMeasurementsClosed
      (And.intro E.postTreatmentMeasurementsClosed
        E.comparisonGroupClosed))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse