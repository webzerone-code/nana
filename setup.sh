#!/bin/bash

echo "setup and configure server"

file_name="config.yaml"

if [ -d "config" ]; then
    config_files=$(ls config)
    echo "contents of config is $config_files "
else 
    echo "directory config not exits creating one"
    mkdir config    
fi

echo "using file $file_name to"

num_files=21

if [ $num_files -eq 21 ]; then
    echo "the number of files is correct"
fi

user_group="nana"
if [ $user_group == "admin" ]; then
    echo "$user_group"
elif [ $user_group == "nana" ]; then
    echo "$user_group"    
fi

## Passing Paramters to bash script

outside_paramter=$1

echo "$outside_paramter"
# ./setup.sh paramter

new_directory=$2
if [ -d $new_directory ]; then
    echo "$new_directory is exits"
    echo "$(ls $new_directory)"
else
    mkdir $new_directory
fi    

#./setup.sh  hello mydirectory

#Reading user input

echo "Reading user input"
read -p "Please Enter Your password : " user_pwd
echo "the entered password is $user_pwd"

