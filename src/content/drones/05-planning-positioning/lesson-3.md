---
title: "Coordinate Systems"
chapter: 5
lesson: 3
---

Every image a drone captures gets tagged with a GPS position, but not all coordinate systems are equally precise for stitching data together.</p>
</div>

## WGS84: The Default, With a Catch

Drones typically record the GPS position of each image captured during flight. This is useful while stitching aligning the photos. However, often the coordinate systems are in <strong>WGS84</strong>, a global coordinate system that uses longitude, latitude, and elevation to determine image position 

<div class="impact-callout">
  <h4>Why WGS84 Can Fall Short</h4>
  <p>The problem with using WGS84 during stitching is that the distance between degrees of longitude narrows as latitude moves from the equator. Because of the inconsistency in distance measurement, processing data with high precision requires a different solution.</p>
</div>

## Projected Coordinate Systems

The <strong>Universal Transverse Mercator (UTM)</strong> use a grid system to project standardized measurements across the globe and provide highly precise positioning. 

## Real-Time Kinematic (RTK) 
RTK tools use projected coordinate systems that use satellites to achieve highly precise positioning accuracy. Drones can be equipped with RTK systems to enhance the precision and accuracy recorded for each image captured. 

<div class="faa-info">
  <p>During data collection and processing, researchers must ensure the coordinate system used by the drone matches the coordinate system used when recording GCP locations and any other positional data included in data processing and analysis. </p>
</div>