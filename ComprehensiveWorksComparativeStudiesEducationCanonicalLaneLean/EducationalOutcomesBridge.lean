import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean.ComparativeStudiesWorksEducation

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact True.intro

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
