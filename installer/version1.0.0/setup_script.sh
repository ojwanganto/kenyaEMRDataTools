#!/bin/bash
# Script to backup MySQL databases

#script directory
current_dir=$(pwd)
script_dir=$(dirname $0)
#full_path = /usr/share/KenyaEMRDataTools/

if [ $script_dir = '.' ]
then
script_dir="$current_dir"
fi
echo script_directory: ${script_dir}

#full_path = "/usr/share/KenyaEMRDataTools/"

echo "Creating new directory"
sudo rm -R "/opt/KenyaEMRDataTools/"
sudo mkdir "/opt/KenyaEMRDataTools/"
sudo chmod -R 755 /opt/KenyaEMRDataTools/
sudo chown -R $USER:$USER /opt/KenyaEMRDataTools/


cp --recursive ${current_dir}/lib/ /opt/KenyaEMRDataTools/
cp ${current_dir}/kenyaEMRQueryTools.jar /opt/KenyaEMRDataTools/
cp ${current_dir}/kenyaEMRDataToolsIcon.png /opt/KenyaEMRDataTools/
sudo rm ~/Desktop/KenyaEMRDataTools.desktop
cp ${current_dir}/KenyaEMRDataTools.desktop ~/Desktop

# make the desktop launcher executable
sudo chown $USER:$USER /home/antony/Desktop/KenyaEMRDataTools.desktop
sudo chmod +x ~/Desktop/KenyaEMRDataTools.desktop



