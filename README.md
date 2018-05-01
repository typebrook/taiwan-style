# taiwan-style
Mapbox map style for mountaineering in Taiwan

#### Use following scripe to download DEM file
```sh -c "$(wget https://raw.githubusercontent.com/typebrook/taiwan-style/master/download-tif.sh -O -)"``` 

#### Reproject GeoTIFF file 
```gdalwarp -of GTiff -t_srs "EPSG:4326" -r bilinear ./dem_20m.tif dem_20m-wgs84.tif```
