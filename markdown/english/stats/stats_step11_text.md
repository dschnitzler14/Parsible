<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
    The more often you run a statistical test, the higher your chance of making a Type I error (false positive), therefore you need to correct for these <span class="ps-highlight-term">multiple comparisons</span>.
</div>

<div class="ps-divider"></div>

<div class="ps-block ps-def">
  <div class="ps-term">What "multiple comparisons" means</div>
  <div>
    Multiple comparisons is not about re-running the same test over and over on the same numbers - you will always get the same results for the same test on the same data. But, for every statistical test, you taking a 5% risk (remember, 𝜶 = 0.05) that the result is a <span class="ps-highlight-term">false positive</span>. That 5% risk applies to each individual test. So, the more tests you do, the higher the risk.
  </div>
</div>

<div class="ps-plain">
  <div class="ps-plain-title">
    <i class="bi bi-translate"></i>
    In plain English
  </div>
  In other words, if you flip a coin once, the chance of heads is 50%. But, if you flip it ten times, the chance of getting at least one heads is much higher than 50%.
</div>

<p class="ps-lede">This is relevent to some statistical tests like an ANOVA, that compare multiple groups: <span class="ps-highlight-critical">A vs B</span>, <span class="ps-highlight-critical"> B vs C</span>, <span class="ps-highlight-critical">A vs C</span>, and each of those comparisons is its own statistical test.</p>

Therefore, <span class="ps-highlight-term">post-hoc tests (aka post-hoc corrections)</span> are use to correct for multiple comparisons, that account for the fact that you are running multiple tests on the same dataset.

### Common Post-hoc Tests

| Post-hoc test | When to use it                                      | Key feature                                   |
| ------------- | --------------------------------------------------- | --------------------------------------------- |
| Bonferroni    | Simple correction for multiple comparisons          | Very strict; divides α by number of tests     |
| Tukey (HSD)   | After ANOVA when comparing all pairwise group means | Controls family-wise error rate               |
| Holm          | Stepwise improvement of Bonferroni                  | Less conservative than Bonferroni             |
| Sidak         | Similar to Bonferroni                               | Slightly more powerful                        |
| Dunnett       | Comparing multiple groups to one control            | Designed for control vs treatment comparisons |

</div>
