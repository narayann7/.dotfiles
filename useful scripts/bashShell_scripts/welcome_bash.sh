#!/bin/bash


 arrry(){
my_array=(w e l c o m e'\t'l x,'\n')
for i in ${my_array[@]}; do printf $i ;sleep 0.18; done
my_array=(t o '_'b a s h'_'#'_'c a u s e'_')
for i in ${my_array[@]}; do printf $i ;sleep 0.13; done
my_array=(w h e r e'_'t h e r e'_'i s'_'a'_'s h e l l'_'t h e r e'_'i s'_'a'_'w a y'\n')
for i in ${my_array[@]}; do printf $i ;sleep 0.07; done

 }


arrry


# chmod +x script-name-here.sh