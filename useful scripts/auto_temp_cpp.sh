#!/bin/bash 


cpp(){

	cpp_path="/home/skillz/Documents/gitHub/projects/scripts-n-files/configs/my_templete.cpp"

	cat $cpp_path > $1

	sub $1
}