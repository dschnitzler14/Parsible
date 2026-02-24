<div class="ps-chapter">

<div class="ps-block ps-callout">
  <div class="ps-callout-title">
    <i class="bi bi-lightbulb-fill"></i>
    Main Concept
  </div>
    Before you even start with a hypothesis test, you should determine what type of data you are working with and calculate the summary statistics.
</div>

<div class="ps-divider"></div>

## Data Types

<p class="ps-lede">Before proceeding with any analysis, you should first understand what type of data you are working with. Broadly, data fall into two main categories: <span class="ps-highlight-term">scale (numeric)</span> and <span class="ps-highlight-term">categorical</span>.</p>

<div class="ps-two-col">

  <div class="ps-tile ps-data-type">
    <h4><i class="bi bi-rulers"></i> Scale</h4>
    <div class="ps-muted">Measurements or counts</div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Continuous</div>
      <div>e.g. height, weight, blood pressure</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Discrete</div>
      <div>e.g. number of children, hospital visits</div>
    </div>
  </div>

  <div class="ps-tile ps-data-type">
    <h4><i class="bi bi-tags"></i> Categorical</h4>
    <div class="ps-muted">Labels or groups</div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Ordinal (Ordered categories)</div>
      <div> e.g. Likert (1–5), pain rating</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Nominal (Unordered categories)</div>
      <div> e.g. country of birth, blood type, treatment group</div>
    </div>
  </div>

</div>

<div class="ps-plain">
  <div class="ps-plain-title">
    <i class="bi bi-translate"></i>
    In plain English
  </div>
  Knowing your data type tells you which summaries and which statistical tests are appropriate.
</div>

<div class="ps-divider"></div>

## Summary Statistics

<p class="ps-lede"> <span class="ps-highlight-term">Descriptive statistics</span> do not test hypotheses. They describe what your data look like and figuring that out is an essential step before running any inferential tests.</p>

<div class="ps-three-col">

  <div class="ps-tile ps-data-type">
    <h4><i class="bi bi-bar-chart-line"></i> Distribution</h4>
    <div class="ps-muted">Overall pattern of the data</div>
    <div class="ps-subcard">
      <div class="ps-subtitle">How to examine it</div>
      <div>Frequency tables, histograms, box plots</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">What to look for</div>
      <div>Normality, skewness, outliers</div>
    </div>
  </div>

  <div class="ps-tile ps-data-type">
    <h4><i class="bi bi-bullseye"></i> Central Tendency</h4>
    <div class="ps-muted">The centre of the data</div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Mean</div>
      <div>Arithmetic average</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Median</div>
      <div>Middle value when ordered</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Mode</div>
      <div>Most frequent value (can be bimodal or multimodal)</div>
    </div>
  </div>

  <div class="ps-tile ps-data-type">
    <h4><i class="bi bi-arrows-expand"></i> Variability</h4>
    <div class="ps-muted">Spread of the data</div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Range</div>
      <div>Distance between minimum and maximum</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Standard deviation</div>
      <div>Average distance from the mean</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Variance</div>
      <div>Average squared deviation</div>
    </div>
    <div class="ps-subcard">
      <div class="ps-subtitle">Interquartile range (IQR)</div>
      <div>Spread of the middle 50%</div>
    </div>
  </div>

</div>

### Which average and measure of spread?

| Data type          | Condition                             | “Average” to report | Measure of spread to report |
| ------------------ | ------------------------------------- | ------------------- | --------------------------- |
| Scale (continuous) | Normally distributed                  | Mean                | Standard deviation          |
| Scale (continuous) | Skewed data (or influential outliers) | Median              | Interquartile range (IQR)   |
| Categorical        | Ordinal                               | Median              | Interquartile range (IQR)   |
| Categorical        | Nominal                               | Mode                | None                        |

</div>
