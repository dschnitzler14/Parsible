<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
  Whichever hypothesis test you use to calculate the test statistic and the associated p-value, you need to check that the assumptions you are making about your data are correct so that the maths works correctly.
</div>

This tells you want kind of test you can do (e.g. <span class="ps-highlight-term">parametric</span> or <span class="ps-highlight-term">non-parametric</span> test) to get the most useful and trustworthy result, as some tests are less sensitive to violations of assumptions.

<div class="ps-plain">
  <div class="ps-plain-title">
    <i class="bi bi-translate"></i>
    In plain English
  </div>
  You need to choose the statistical test that fits your data. Like clothing, you don’t want what fits most people, you want what fits you.
</div>

<div class="ps-divider"></div>

## Assumptions

<div class="ps-myths">
  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-check-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">Normality</div>
      <div class="ps-myth-text">
        <ul class="ps-list">
            <li><span class="ps-dot"></span><span>This is important for a parametric test, as the formula assumes that the data is normally distributed.</span></li>
            <li><span class="ps-dot"></span><span>If the data is not normally distributed, then you must use a non-parametric test</span></li>
            <li><span class="ps-dot"></span><span>While there are mathematical ways to calculate normality (e.g. Shapiro-Wilk), these can be very sensitive to sample size and therefore not accurate</span></li>
            <li><span class="ps-dot"></span><span>Best solution is to plot a histogram or a QQ-plot and visually assess if the data follow a normal-ish distribution pattern</span></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-check-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">Independent observations</div>
      <div class="ps-myth-text">
        <ul class="ps-list">
            <li><span class="ps-dot"></span><span>This assumes that the results for one subject are not affected by another subject.</span></li>
            <li><span class="ps-dot"></span><span>An example of a non-independent observation is repeated measures (multiple samples from the same subject)</span></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-check-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">Homogeneity of Variances</div>
      <div class="ps-myth-text">
        <ul class="ps-list">
            <li><span class="ps-dot"></span><span>This assumes that the variance of the data is similar among all groups being tested.</span></li>
            <li><span class="ps-dot"></span><span>Check it by comparing group spread visually with a boxplot. The boxes/whiskers should be similar.</span></li>
            <li><span class="ps-dot"></span><span>You can also run a variance test (e.g. Levene’s test)</span></li>
        </ul>
      </div>
    </div>
  </div>

  </div>

<div class="ps-divider"></div>

<div class="ps-block ps-def">
  <div class="ps-term">Can't I just always do the same test?</div>
  <div>
    Some tests are more powerful than others, meaning you are more likely to detect real differences with the correct test. In other words, if you do a test that is fairly insensitive to violations, when you could actually run a more specific test, you might be missing important results.
  </div>
</div>

</div>
