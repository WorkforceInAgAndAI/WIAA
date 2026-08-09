---

title: "Plot Extraction"

chapter: 9

lesson: 4

---
Drone imagery can be applied to different problems in agriculture. The specific problem is often dependent on the user. An agronomist who scouts a field to identify presence or patterns of stress will likely be interested in data analysis on a whole field level, while an agronomist who evaluates different crop varieties or treatments, will likely be interested in data analysis in many small plots to look at each plot individually.

Agronomists seeking to analyze data at the whole field level do not need to extract plots from their field, however an additional plot extraction step is needed for agronomists looking to evaluate individual plots.

<div class="impact-callout">

&#x20; <h4>How Plot-Level Values Are Calculated</h4>

&#x20; <p>After completing the above processing steps, we can create borders around objects of interest, in this case field plots, to determine plots with high and low VIs. The VI calculated for each pixel will be averaged together with all pixels within a plot boundary. This average value will be the average VI for that plot. The resulting values can be used to classify varieties or treatments. </p>

</div>

![Plot extraction grid over a field](/WIAA/images/processing\_plotextraction.jpg)
<p class="image-caption">Example of a field containing plots demonstrating different VIs. Plots with low VIs represent low canopy coverage and are considered unhealthy. Those with high canopy coverage show a brighter green color and represent healthier plants.</p>


<div class="reflection-card">

&#x20; <h4>Plant Breeders</h4>

&#x20; <p>A plant breeder would use the values from this step to determine which varieties perform best for a specific trait and can be used for creating new varieties that will perform well for the trait of interest.</p>

</div>





## Learning Activity


<div class="shiny-cta">

&#x20; <h4>Finish the Full Pipeline</h4>

&#x20; <p>Try the plot comparison tool below: which plot is healthiest? Which is the most stressed? Why does that distinction matter for making a management decision? </p>

&#x20; <a href="https://workforceinagandai.shinyapps.io/imagery-processing-activity/" target="\_blank" rel="noopener noreferrer" class="shiny-cta\_\_button">Launch the Pipeline Tool \&rarr;</a>

</div>

