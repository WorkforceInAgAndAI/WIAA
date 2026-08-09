---

title: "Limitations"

chapter: 4

lesson: 5

---

Many satellites orbit the Earth above the clouds. This high perspective helps satellites to capture vast areas of the Earth; however, clouds can obstruct satellite imagery. Some wavelengths such as microwaves or radio waves can pass through clouds because they are longer than the water droplets that obstruct other wavelengths. Some astronomy tools use microwaves and radio waves to observe the universe because these wavelengths can pass through cloud cover. Some slightly shorter wavelengths such as near infrared or ultraviolet light can pass through less dense clouds. You can still get sunburn on cloudy days because ultraviolet light that causes sunburns can pass through clouds. Clouds often appear white. This is because the wavelengths of visible light are too short to pass through the water droplets in clouds so get reflected and scattered.



<p>Clouds are not the only obstruction in the atmosphere that can impact satellite imagery. Water vapor, dust, and aerosols can exist in the atmosphere and block or scatter light. Water vapor or other atmospheric gases include ozone or methane which alter light movement. Dust includes air pollutants that block visibility and decrease clarity. Aerosols may include organic particles that get suspended in the atmosphere from forest fires or volcanoes. Sea salt is also a common aerosol which can become suspended from ocean waves. Known issues in satellite imagery can also be accounted for during image processing using models or indices that "remove" unwanted reflectance effects.</p>



<p>The sensor itself can also limit the impact of the resolution of data collected from sensors. Over time, the initial calibrations of the satellite may be altered due to space particle and environmental conditions. This can result in reduced sensitivity, distorted images, or total sensor failure. Often these issues can be prevented or recovered from regular calibration, and regular maintenance to prevent issues before they occur.</p>



<p>Data resolution is a tradeoff between the four types of resolution covered in this chapter. High temporal resolution requires higher orbits opposed to the lower orbits required for high spatial resolution. High temporal resolution also generates large quantities of data, like spectral and radiometric resolution. To maintain manageable data sizes, only one or two of these can be prioritized on satellites.</p>



![Data resolution trade-offs](/WIAA/images/data_resolutions_tradeoffs.jpg)
<p class="image-caption">The tradeoffs of data resolutions.</p>



<h3>Table 2: Data Resolution of Selected Satellites</h3>



<table class="platform-table resolution-table">

&#x20; <thead>

&#x20;   <tr>

&#x20;     <th>Satellite</th>

&#x20;     <th>Temporal</th>

&#x20;     <th>Radiometric</th>

&#x20;     <th>Spectral</th>

&#x20;     <th>Spatial</th>

&#x20;   </tr>

&#x20; </thead>

&#x20; <tbody>

&#x20;   <tr>

&#x20;     <td><strong>Landsat 9</strong><sup>1</sup></td>

&#x20;     <td>16 days<sup>1</sup></td>

&#x20;     <td>14-bit<sup>1</sup></td>

&#x20;     <td>

&#x20;       Coastal/Aerosol: 0.43-0.45µm <br/>

&#x20;       Visible Blue: 0.45-0.51µm <br/>

&#x20;       Visible Green: 0.53-0.59µm <br/>

&#x20;       Visible Red: 0.64-0.67µm <br/>

&#x20;       Near-Infrared: 0.85-0.88µm <br/>

&#x20;       Shortwave-Infrared 1: 1.57-1.65µm <br/>

&#x20;       Shortwave-Infrared 2: 2.11-2.29µm <br/>

&#x20;       Panchromatic: 0.50-0.68µm <br/>

&#x20;       Cirrus: 1.36-1.38µm <br/>

&#x20;       Thermal-infrared 1: 10.60-11.19µm <br/>

&#x20;       Thermal-infrared 2: 11.50-12.51µm <sup>1</sup>

&#x20;     </td>

&#x20;     <td>VSWIR and SWIR: 30 m<br/>Panchromatic: 15 m<br/>TIR: 100 m<sup>1</sup></td>

&#x20;   </tr>

&#x20;   <tr>

&#x20;     <td><strong>Sentinel-2</strong><sup>19</sup></td>

&#x20;     <td>5 days<sup>19</sup></td>

&#x20;     <td>12-bit<sup>19</sup></td>

&#x20;     <td>13 bands of VNIR + SWIR: 0.4-2.4µm <sup>19</sup></td>

&#x20;     <td>B2, B3, B4, B8: 10 m<br/>B5, B6, B7, B8a, B11, B12: 20 m<br/>B1, B9, B10: 60 m<sup>19</sup></td>

&#x20;   </tr>

&#x20;   <tr>

&#x20;     <td><strong>Pleiades Neo</strong><sup>20</sup></td>

&#x20;     <td>2 times per day<sup>20</sup></td>

&#x20;     <td>12-bit<sup>21</sup></td>

&#x20;     <td>

&#x20;       Panchromatic: 450-800 nm<br/>

&#x20;       Deep Blue: 400-450 nm<br/>

&#x20;       Blue: 450-520 nm<br/>

&#x20;       Green: 530-590 nm<br/>

&#x20;       Red: 620-690 nm<br/>

&#x20;       Red Edge: 700-750 nm<br/>

&#x20;       Near-infrared: 770-880µm <sup>20</sup>

&#x20;     </td>

&#x20;     <td>Panchromatic: 30 cm<br/>Multispectral: 1.2 m<sup>20</sup></td>

&#x20;   </tr>

&#x20;   <tr>

&#x20;     <td><strong>SkySat</strong><sup>22</sup></td>

&#x20;     <td>6-7 times per day<sup>22</sup></td>

&#x20;     <td>8-bit depth before processing<br/>16-bit depth after processing<sup>23</sup></td>

&#x20;     <td>

&#x20;       Blue: 450-515 nm<br/>

&#x20;       Green: 515-595 nm<br/>

&#x20;       Red: 605-695 nm<br/>

&#x20;       NIR: 740-900 nm<br/>

&#x20;       PAN: 450-900 nm<sup>22</sup>

&#x20;     </td>

&#x20;     <td>

&#x20;       SkySat-1, SkySat-2 - Panchromatic: 0.86 m, Multispectral: 1.0 m<br/>

&#x20;       SkySat-3 - SkySat-15 - Panchromatic: 0.65 m, Multispectral: 0.81 m<br/>

&#x20;       SkySat-16 - SkySat-21 - Panchromatic: 0.57 m, Multispectral: 0.75 m<sup>22</sup>

&#x20;     </td>

&#x20;   </tr>

&#x20; </tbody>

</table>

