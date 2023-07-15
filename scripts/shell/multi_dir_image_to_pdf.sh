#!/bin/bash

#remember single_folder_images_to_pdf.sh should present in the same dir...


path=`pwd`

fol=$1
cd $fol

for dir in */; do
    sc=`echo $dir`
    sc=`echo "${sc%?}"`
    $path"/single_folder_images_to_pdf.sh" $sc

done

