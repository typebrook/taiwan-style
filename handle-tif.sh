#!/bin/bash

# download DEM file from MOI. If file is invalid, see https://data.gov.tw/dataset/35430
wget -O MOI-20mDEM.zip  http://data.moi.gov.tw/MoiOD/System/DownloadFile.aspx?DATA=89476AAA-53A8-46C6-8161-0E38B700B772

# decompress the zip file
unzip MOI-20mDEM.zip -d ./MOI-20mDEM
unrar e MOI-20mDEM/*rar MOI-20mDEM/
