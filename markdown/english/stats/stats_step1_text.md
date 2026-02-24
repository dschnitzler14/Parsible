<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
  A statistical test compares your data to what you’d expect to see <b>if the null hypothesis were true</b>.
</div>

<div class="ps-divider"></div>

<div class="ps-block ps-def">
  <div class="ps-term">Statistical tests are required to test a hypothesis</div>
  <div>
    <div style="margin-top:10px;">
      <span class="ps-badge">How to use a statistical test</span>
      <ul class="ps-list">
        <li><span class="ps-dot"></span><span>Estimate the size of a difference between groups.</span></li>
        <li><span class="ps-dot"></span><span>Test whether an observed relationship is likely to be true (not just sampling noise of natural variability).</span></li>
        <li><span class="ps-dot"></span><span>Generalise from a sample to a wider population.</span></li>
      </ul>
    </div>
  </div>
</div>

<p class="ps-lede">Don't worry, you don't actually need to do any maths for this though! These are defined formulae that allow you to drop your data and variables in.</p>

<p class="ps-lede">In your test you calculate the appropriately named <span class="ps-highlight-term">test statistic</span>, which measures how far your observed result is from what you would expect if there were no real effect (i.e. the null hypothesis). If the null hypothesis is true, most values of this statistic fall within a typical range, and the difference calculated would be none. <span class="ps-highlight-critical">The further your value lies from that range, the more unusual your data are under the null hypothesis</span>.</p>

<div class="ps-plain">
  <div class="ps-plain-title">
    <i class="bi bi-translate"></i>
    In plain English
  </div>
  Assuming there is absolutely no difference between the groups, we expect the test statistic to be zero (for an ANOVA it is F=1, because - maths).
</div>

<div class="ps-block ps-def">
  <div class="ps-term">Test statistic</div>
  <div>
    Depending on the statistical test you are carrying out, you will have different test statistic terms.
  </div>
</div>

### Common test statistics

| Test statistic | Null hypothesis (H₀)                                   | Alternative hypothesis (H₁)           | Used in               |
| -------------- | ------------------------------------------------------ | ------------------------------------- | --------------------- |
| t              | The means of two groups are equal                      | The means of two groups are not equal | t-test, regression    |
| z              | The means of two groups are equal                      | The means of two groups are not equal | z-test                |
| F              | Group means do not differ more than expected by chance | At least one group mean differs       | ANOVA, ANCOVA, MANOVA |
| χ²             | Variables are independent                              | Variables are associated              | Chi-square test       |
| r              | There is no linear relationship                        | There is a linear relationship        | Correlation tests     |

<p class="ps-lede">The test statistic is used to calculate the <span class="ps-highlight-term">p-value</span>, which estimates how likely it is that you would see the difference described by the test statistic, assuming the null hypothesis is true. The smaller the p-value, the further away from the range predicted by the null hypothesis. If there is truly no difference, then the p-value will be close to 1.</p>

<div class="ps-divider"></div>

<div class="ps-tile-row">
  <div class="ps-tile">
    <h4>What is a statistical test</h4>
    A method for comparing your observed data to what you would expect
    if there were no real effect or relationship.
  </div>
  <div class="ps-tile">
    <h4>What is can tell you</h4>
    Whether your results would be unlikely under the null hypothesis,
    helping you judge the strength of evidence against it.
  </div>
  <div class="ps-tile">
    <h4>What it helps you decide</h4>
    Whether you have enough evidence to reject the null hypothesis.
  </div>
</div>

</div>
