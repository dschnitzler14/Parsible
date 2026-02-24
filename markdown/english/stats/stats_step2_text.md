<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
    A p-value is the <span class="ps-highlight-term">probability value</span>, which estimates how likely it is that you would see the difference described by the test statistic <span class="ps-highlight-critical">if the null hypothesis of the relationship is true</span> and there really is no difference or association in the population of interest.
</div>

<div class="ps-plain">
  <div class="ps-plain-title">
    <i class="bi bi-translate"></i>
    In plain English
  </div>
  The test statistic measures distance from the null expectation.
  The p-value translates that distance into a probability under the null hypothesis.
</div>

<p class="ps-lede">The cutoff for determining if a p-value is significant, by convention is 5%, which is usually written out as <span class="ps-highlight-critical">𝜶 = 0.05</span>. In other words, if there truly is no effect, we would only expect to see results this extreme (or more extreme) about 5 times out of 100 purely due to random variation.</p>

<div class="ps-block ps-def">
  <div class="ps-term">𝜶 = 0.05</div>
  <div>
    This cutoff is about minimising false positives, not about proving something is true. You will learn more about <span class="ps-highlight-term">false positives</span> and <span class="ps-highlight-term">false negatives</span> (Type I and Type II errors), later.
  </div>
</div>

<div class="ps-divider"></div>

## What a p-value is not

<div class="ps-myths">
  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-x-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">It is not the <span class="ps-highlight-wrong">probability</span> that the null hypothesis is true.</div>
      <div class="ps-myth-text">
        The p-value assumes the null hypothesis is true and asks how unusual your data would be under that assumption.
      </div>
    </div>
  </div>

  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-x-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">It is not the probability that your results happened <span class="ps-highlight-wrong">by chance</span>.</div>
      <div class="ps-myth-text">
        Random variation is already calculated in the statistical test.
      </div>
    </div>
  </div>

  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-x-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">It is not a measure of <span class="ps-highlight-wrong">how big or important</span> an effect is.</div>
      <div class="ps-myth-text">
        A tiny effect can have a very small p-value if the sample size is large.
      </div>
    </div>
  </div>
</div>

<div class="ps-divider"></div>

## Why results "approaching significance" is not actually a thing

You might see phrases like
<span class="ps-quote-inline">there was a trend towards significance (p = 0.07)</span>
or
<span class="ps-quote-inline">the results approached significance</span>,
but this language is misleading.

<div class="ps-rule">
  <div class="ps-rule-title">
    <i class="bi bi-slash-circle"></i>
    There is no “almost significant”
  </div>

  <div class="ps-rule-body">
    At the conventional threshold of <b>α = 0.05</b>:
    <ul class="ps-clean-list">
      <li><span>p ≤ 0.05</span><span>Statistically significant</span></li>
      <li><span>p &gt; 0.05</span><span>Not statistically significant</span></li>
    </ul>
  </div>
</div>

<p class="ps-lede">There is no "almost" significant boundary. In fact, a <span class="ps-highlight-subtle">p-value of 0.051 is not meaningfully, mathematically different from 0.049</span>, it is just the cutoff threshold we have agreed upon. It means the evidence against the null hypothesis was weaker than your predefined threshold allowed you to conclude as statistically significant.</p>

<div class="ps-frequency">
  If p = 0.07 and the null hypothesis is true:
  <div class="ps-frequency-stat">About 7 out of 100 studies</div>
  would produce results this extreme just by random variation.
</div>

<p class="ps-lede">In other words, for p = 0.07, if the null hypothesis is true (and there really is no effect), results this extreme would happen about 7 times out of 100. Of course, 7% is not that different from 5%, but the line needs to be drawn somewhere, and it is typically at 5%.</p>

<div class="ps-divider"></div>

<div class="ps-tile-row">
  <div class="ps-tile">
    <h4>Core assumption</h4>
    The null hypothesis is true and there is no effect.
  </div>
  <div class="ps-tile">
    <h4>What the p-value tells you</h4>
    How likely the result would be, assuming H0 is true.
  </div>
  <div class="ps-tile">
    <h4>How to interpret it</h4>
    A small p-value means your data would be unusual if there were truly no effect.
  </div>
</div>

</div>
