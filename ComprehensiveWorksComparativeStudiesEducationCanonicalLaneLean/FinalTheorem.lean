import HautevilleHouse.ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean.EducationalOutcomesBridge

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

def ConstrainedComparativeEducationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_comparative_education_endgame (A : AdmissibleClass) :
    ConstrainedComparativeEducationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
