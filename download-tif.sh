#!/bin/bash

# Download DEM file from MOI. If file is invalid, see https://data.gov.tw/dataset/35430
wget -O MOI-20mDEM.zip  http://data.moi.gov.tw/MoiOD/System/DownloadFile.aspx?DATA=89476AAA-53A8-46C6-8161-0E38B700B772

# Extract tif file for Taiwan, why there is a .rar inside .zip? = =||
unzip MOI-20mDEM.zip -d ./MOI-20mDEM
unrar e MOI-20mDEM/*rar* MOI-20mDEM/
# Or use unar
# unar MOI-20mDEM.zip -o ./MOI-20mDEM
# unar MOI-20mDEM/*rar -o MOI-20mDEM/

# Move tif file to current directory
find MOI-20mDEM -name dem_20m.tif -exec mv {} ./ \;
