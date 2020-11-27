#!/bin/bash
resize -s 90 150
clear
echo "photoslibrary_extractor by elias"
sleep 2s
echo
echo
echo
echo "This tool helps you to recover the photos and video from a damaged apple photo library (.photolibrary)"
sleep 3s
echo
echo
echo
echo "press ENTER to continue"
read
clear
echo "please give me your password for root access"
sudo clear
cd ~/Downloads/
mkdir dinifotos
clear
echo "!!! BACKUP THE LIBRARY ON A USB OR SIMILAR!!!"
sleep 3s
echo
echo
echo
echo "press ENTER to continue"
read
clear
echo "as soon as you press enter a new window opens. please drag and drop your library into it and come back to terminal."
read
open ~/Downloads/dinifotos
clear
echo "the library is in it? please press ENTER to contiue"
read
clear
echo "now the process can begin. please press ENTER"
read
clear
mv ~/Downloads/dinifotos/*.photoslibrary ~/Downloads/dinifotos/123.photoslibrary
cd ~/Downloads/dinifotos/123.photoslibrary/resources/derivatives/
rm -r masters/
cd ~/Downloads/dinifotos/123.photoslibrary
clear
cd ~/Downloads/dinifotos/
clear
sudo find . -name '*.*' -exec cp {} ~/Downloads/dinifotos/ \;
mkdir ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.jpg ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.jpeg ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.png ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.heic ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.gif ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.tiff ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.raw ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.mp4 ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.mov ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.avi ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.wmv ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.mpg ~/Downloads/Photos/
cp ~/Downloads/dinifotos/*.swf ~/Downloads/Photos/
cd ~/Downloads/
sudo rm -r dinifotos
clear
echo "FINISH"
sleep 1
echo "press ENTER to open the Folder with the files. stored in Downloads -> Photos"
read
open ~/Downloads/Photos