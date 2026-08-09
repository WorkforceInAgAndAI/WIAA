---

title: "Ground Control Points and Calibration"

chapter: 9

lesson: 2

---



Once the field is flown, two things still need to happen before the imagery is trustworthy: aligning it to the real world, and correcting it for the light it was captured under.



## Ground Control Points



<p class="section-intro">GCPs help align the images captured during the mission and match them with the field where they are representing. The black and white panels are set out, their GPS location is recorded, and then we fly the drone. When we are done flying, we use the ground control points when we process data to align the images in the field to their correct GPS location. </p>



![Ground control points visible from close range](/WIAA/images/processing\_closeGCP.jpg)
<p class="image-caption">A ground control point in a field.</p>




![Ground control points as seen in the processing app](/WIAA/images/processing\_appGCP.jpg)
<p class="image-caption">The GPS positions of ground control points in the corners of a field</p>




## Coordinate Systems: UTM Zones

<h4>Why Not Just Use Latitude and Longitude?</h4>

Drones typically record the GPS position of each image captured during flight. This is useful while stitching aligning the photos. However, often the coordinate systems are in WGS84, a global coordinate system that uses longitude, latitude, and elevation to determine image position. 
The problem with using WGS84 during stitching is that the distance between degrees of longitude narrows as latitude moves from the equator. Because of the inconsistency in distance measurement, processing data with high precision requires a different solution. Projected coordinate systems such as the Universal Transverse Mercator (UTM) use a grid system to project standardized measurements across the globe and provide highly precise positioning. 




## Spectral Corrections

Not every image is captured under the same conditions. Sun angle, cloud cover, and sensor differences all change what a sensor records, even when the object of interest has not changed. To correct for these issues, we can use calibration panels with known values to adjust bands to their true value. 


![Calibration reflectance panel](/WIAA/images/calibration\_pannel.jpg)
<p class="image-caption">A spectral reflectance panel for correcting spectral imagery.</p>


When we use a specialized sensor such as a multispectral camera, the camera detects how the object we are interested in reflects light across the electromagnetic spectrum. 
However, each time we use a sensor, the lighting conditions around it are different; the time of day, clouds in the sky, or surrounding objects can result in different light being detected by the sensor.
To fix this, we calibrate the camera to adjust the reflectance values detected by the sensor, so they accurately reflect real-world conditions. Each band has a calibration coefficient that is used to align the values captured in the image to the true values.


</div>



![Calibration values in the processing software](/WIAA/images/processing\_calibration.jpg)
<p class="image-caption">Images displaying reflectance of wavelengths captured by different spectral bands on a multispectral camera.<sup>19</sup></p>

## Learning Activity

<h4>Ground Control Points: Overlap Puzzle</h4>

&#x20; <p>Try assembling a set of overlapping field images versus a set of non-overlapping ones. Which was easier, and why? What's the downside of very high overlap?

