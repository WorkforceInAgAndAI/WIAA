---

title: "Processing Outputs and Field Analysis"

chapter: 9

lesson: 3

---



Once the imagery is stitched, multiple types of outputs can be produced.


&#x20; <h4>Orthomosaics and Indices</h4>

&#x20; <p><strong>Orthomosaic</strong> images are created from overlapping the many photos taken during the drone mission and geometrically correcting them to create a single large image of an area.  An <strong>index</strong> combines reflectance map values into vegetation index calculations.</p>

</div>

![Index and thresholding output](/WIAA/images/processing\_index.jpg)
<p class="image-caption">A stitched index map of a field.</p>

## From Points to Surfaces

Beyond X and Y coordinates, pixels can have Z coordinates, which can be used to produce elevation maps. 

<div class="benefits-grid">

&#x20; <div class="benefit-card">

&#x20;   <div class="benefit-number">1</div>

&#x20;   <h4>Point Cloud</h4>

&#x20;   <p>Point clouds are produced by mapping the positions of each pixel in the image to create a 3D map. .</p>

&#x20; </div>

&#x20; <div class="benefit-card">

&#x20;   <div class="benefit-number">2</div>

&#x20;   <h4>Mesh</h4>

&#x20;   <p>These pixels are not connected to each other, but once they are connected, they form a mesh, or a 3d surface of the area of interest. </p>

&#x20; </div>

&#x20; <div class="benefit-card">

&#x20;   <div class="benefit-number">3</div>

&#x20;   <h4>DSM</h4>

&#x20;   <p>Because the pixels carry height values, together forming an elevation map also known as a Digital Surface Model.</p>

&#x20; </div>

</div>



![Digital Surface Model example](/WIAA/images/processing\_dsm.jpg)

<p class="image-caption">A stitched DSM of a field.</p>





## Field Analysis: Separating Canopy from Soil
Once the images are stitched together, and we know their reflectance values are accurate, we may want to remove any parts of the image containing unneeded data. Agronomists studying crops are often interested in only the parts of the image that contain crops rather than soil or other non-crop plants.






<div class="impact-callout">

&#x20; <h4>Masking and Thresholding</h4>

&#x20; <p>Applying a mask and threshing the image allows us to take an image with many pixel values and transform it into an image with just two-pixel values, black and white. Determining which pixels are black and which are white depends on our threshold value, which can vary from drone flight to drone flight. Any value above a threshold value will become one color, while any pixels with a value below a threshold value will become the other color. 
The remaining pixels representing vegetation can then be overlapped with each spectral band to calculate VIs. 
</p>

</div>



## Learning Activity


Try the interactive threshold tool below to separate a shape from its background, just like separating canopy from soil.
