#!/bin/bash


# before running the script 
# make sure imagemagick and qpdf is installed 

# otherwise -----
# sudo apt-get install imagemagick
# sudo mv /etc/ImageMagick-6/policy.xml /etc/ImageMagick-6/policy.xmlout
# and
# sudo apt-get install qpdf
# after that run the script 

folderName=$1

cd $folderName

pdf=$folderName".pdf"
pdf2="test.pdf"
convert \* $pdf2
# password=`echo $pdf | base64`
password="fuckyou"
qpdf --encrypt abc $password 256 -- $pdf2 $pdf 
rm $pdf2
path=`pwd`
path2=${path%/*}

mv $path/$pdf $path2
# echo $pdf 
# echo $password

cd ..


