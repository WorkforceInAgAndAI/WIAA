---
title: "Field Analysis"
chapter: 9
lesson: 5
---
Once the images are stitched together, and we adjust for atmospheric effects and know they are positioned correctly, we may want to remove any part of the image that we are not interested in. In plant science, we may only be interested in the parts of the image that contain plants.

<div class="impact-callout">
  <h4>Masking and Thresholding</h4>
  <p>Applying a mask and threshing the image allows us to take an image with many pixel values and transform it into an image with just two-pixel values, black and white. Determining which pixels are black and which are white depends on our threshold value which can vary by satellite pass. Any value above a threshold value will become one color (black), while any pixels with a value below a threshold value will become the other value (white). Any pixel above the threshold value will be kept in the photo, while values below the threshold value will be removed. This technique is used to remove soil from images to prevent soil values from being included in analysis.</p>
</div>