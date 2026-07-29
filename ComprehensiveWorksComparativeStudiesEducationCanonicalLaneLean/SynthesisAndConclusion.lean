import HautevilleHouse.ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean.SystemicFactors

namespace HautevilleHouse
namespace ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean

structure SynthesisPackage {C : CurriculumFrameworkPackage}
    {M : ComparativeMethodologyPackage C} {O : EducationalOutcomePackage C M}
    {S : SystemicFactorPackage C M O} where
  crossCuttingThemes : Prop
  policyRecommendations : Prop
  researchImplications : Prop
  theoreticalContributions : Prop
  limitations : Prop

structure SynthesisEvidence {C : CurriculumFrameworkPackage}
    {M : ComparativeMethodologyPackage C} {O : EducationalOutcomePackage C M}
    {S : SystemicFactorPackage C M O} (Syn : SynthesisPackage C M O S) where
  crossCuttingThemesClosed : Syn.crossCuttingThemes
  policyRecommendationsClosed : Syn.policyRecommendations
  researchImplicationsClosed : Syn.researchImplications
  theoreticalContributionsClosed : Syn.theoreticalContributions
  limitationsClosed : Syn.limitations

def SynthesisClosed {C : CurriculumFrameworkPackage}
    {M : ComparativeMethodologyPackage C} {O : EducationalOutcomePackage C M}
    {S : SystemicFactorPackage C M O} (Syn : SynthesisPackage C M O S) : Prop :=
  Syn.crossCuttingThemes ∧ Syn.policyRecommendations ∧ Syn.researchImplications ∧
  Syn.theoreticalContributions ∧ Syn.limitations

theorem synthesis_closed_from_evidence
    {C : CurriculumFrameworkPackage} {M : ComparativeMethodologyPackage C}
    {O : EducationalOutcomePackage C M} {S : SystemicFactorPackage C M O}
    (Syn : SynthesisPackage C M O S) (E : SynthesisEvidence Syn) : SynthesisClosed Syn := by
  exact And.intro E.crossCuttingThemesClosed
    (And.intro E.policyRecommendationsClosed
      (And.intro E.researchImplicationsClosed
        (And.intro E.theoreticalContributionsClosed E.limitationsClosed)))

end ComprehensiveWorksComparativeStudiesEducationCanonicalLaneLean
end HautevilleHouse
