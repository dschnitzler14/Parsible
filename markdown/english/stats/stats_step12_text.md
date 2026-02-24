<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
    Once you have determined the <span class="ps-highlight-term">data type</span>, how it look (i.e. <span class="ps-highlight-term">summary statistics</span>), and checked the <span class="ps-highlight-term">assumptions</span> on the data, you will need to decide which <span class="ps-highlight-term">statistical test</span> is the most appropriate to answer your question.</span>.
</div>

<div class="ps-divider"></div>

### Choosing a Statistical Test (Based on Dependent Variable)

<div class="ps-source">
  <div class="ps-source-title">
    <i class="bi bi-journal-text"></i>
    Source
  </div>
    Tables adapted from:
    <a href="https://www.statstutor.ac.uk/resources/uploaded/tutorsquickguidetostatistics.pdf" target="_blank">
    <i class="bi bi-box-arrow-up-right ps-ext-icon"></i>
    Tutors’ Quick Guide to Statistics – StatsTutor
    </a>
</div>

| Dependent Variable Type | Distribution         | Suggested Test Type |
| ----------------------- | -------------------- | ------------------- |
| Scale (continuous)      | Normally distributed | Parametric test     |
| Scale (continuous)      | Skewed / non-normal  | Non-parametric test |
| Categorical - Ordinal   | -                    | Non-parametric test |
| Categorical - Nominal   | -                    | Chi-squared test    |

### Common Single Comparison Tests

| Comparing                                                            | Dependent (Outcome) Variable | Independent (Explanatory) Variable | Parametric Test (Normal data) | Non-parametric Test (Skewed / Ordinal data) |
| -------------------------------------------------------------------- | ---------------------------- | ---------------------------------- | ----------------------------- | ------------------------------------------- |
| Averages of two **independent** groups                               | Scale                        | Nominal (Binary)                   | Independent t-test            | Mann–Whitney U / Wilcoxon rank sum          |
| Averages of **3+ independent** groups                                | Scale                        | Nominal                            | One-way ANOVA                 | Kruskal–Wallis test                         |
| Average difference between **paired samples** (e.g. before vs after) | Scale                        | Time / Condition                   | Paired t-test                 | Wilcoxon signed-rank test                   |
| **3+ repeated measurements** on same subject                         | Scale                        | Time / Condition                   | Repeated measures ANOVA       | Friedman test                               |

### Tests of Association

| Comparing                                           | Variable 1       | Variable 2  | Parametric Test                   | Non-parametric / Alternative                 |
| --------------------------------------------------- | ---------------- | ----------- | --------------------------------- | -------------------------------------------- |
| Relationship between 2 continuous variables         | Scale            | Scale       | Pearson’s correlation coefficient | Spearman’s correlation coefficient           |
| Predicting one continuous variable from a predictor | Scale            | Any         | Simple linear regression          | Transform the data (if assumptions violated) |
| Predicting a binary outcome variable                | Nominal (Binary) | Any         | Logistic regression               | —                                            |
| Relationship between 2 categorical variables        | Categorical      | Categorical | —                                 | Chi-squared test                             |

### One scale dependent and several independent variables

| 1st Independent Variable     | 2nd Independent Variable     | Suggested Test                  |
| ---------------------------- | ---------------------------- | ------------------------------- |
| Scale                        | Scale or Binary              | Multiple regression             |
| Nominal (Independent groups) | Nominal (Independent groups) | Two-way ANOVA                   |
| Nominal (Repeated measures)  | Nominal (Repeated measures)  | Two-way repeated measures ANOVA |
| Nominal (Independent groups) | Nominal (Repeated measures)  | Mixed ANOVA                     |
| Nominal                      | Scale                        | ANCOVA                          |

<div class="ps-advice">
  <div class="ps-advice-title">
    <i class="bi bi-lightbulb"></i>
    Practical tip
  </div>

Use regression when your independent variables are scale or binary.
Use ANOVA when comparing categorical groups.
If categorical variables have many levels, ANOVA is often clearer than dummy coding.

</div>

</div>
