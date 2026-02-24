<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
  When we test a hypothesis, there are four possible outcomes: two correct decisions and two possible errors.
</div>

<div class="ps-matrix-wrap">
  <div class="ps-matrix">
    <div class="ps-mx-top ps-mx-col1">Reality: H₀ is true</div>
    <div class="ps-mx-top ps-mx-col2">Reality: H₀ is false</div>
    <div class="ps-mx-left ps-mx-row1">Decision: Reject H₀</div>
    <div class="ps-mx-cell ps-error ps-mx-a">
      <div class="ps-matrix-title">Type I Error</div>
      False positive<br>
      Rejecting a true null hypothesis
    </div>
    <div class="ps-mx-cell ps-correct ps-mx-b">
      <div class="ps-matrix-title">Correct decision</div>
      True positive<br>
      Detecting a real effect
    </div>
    <div class="ps-mx-left ps-mx-row2">Decision: Accept H₀</div>
    <div class="ps-mx-cell ps-correct ps-mx-c">
      <div class="ps-matrix-title">Correct decision</div>
      True negative<br>
      No effect detected (and none exists)
    </div>
    <div class="ps-mx-cell ps-error ps-mx-d">
      <div class="ps-matrix-title">Type II Error</div>
      False negative<br>
      Missing a real effect
    </div>

  </div>
</div>

<div class="ps-divider"></div>

<div class="ps-myths">
  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-exclamation-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">Type I Error</div>
      <div class="ps-myth-text">
        <ul class="ps-list">
            <li><span class="ps-dot"></span><span>false positive</span></li>
            <li><span class="ps-dot"></span><span>this rejects a true null hypothesis</span></li>
            <li><span class="ps-dot"></span><span>this means a result is reported as "significant", when it isn't</span></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="ps-myth">
    <div class="ps-myth-icon"><i class="bi bi-exclamation-circle-fill"></i></div>
    <div class="ps-myth-body">
      <div class="ps-myth-title">Type II Error</div>
      <div class="ps-myth-text">
        <ul class="ps-list">
            <li><span class="ps-dot"></span><span>false negative</span></li>
            <li><span class="ps-dot"></span><span>this accepts a false null hypothesis</span></li>
            <li><span class="ps-dot"></span><span>this means a result is reported as "non-significant", when it actually is</span></li>
            <li><span class="ps-dot"></span><span>the likelihood of committing this type of error is related to the power of the statistical test, which is why it is important to carry out a power analysis</span></li>
        </ul>
      </div>
    </div>
  </div>
  </div>

<div class="ps-block ps-def">
  <div class="ps-term">Statistical tests make decisions based on sample data and model assumptions.</div>
  <div>
     If those assumptions are violated, the maths that control Type I and Type II errors may no longer be accurate.
  </div>
</div>

</div>
