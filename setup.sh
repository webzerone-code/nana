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

#Reading all Paramters assigned to script

echo "all the paramters is passed is $* and there number is $#"
#./setup.sh  hello mydirectory h1 h2 h3 h4 h5

#LOOPS#
for param in $*; do
    echo "$param"
done    




#counter=0
#while [ true ]; do
#    echo "sleep for 1 and counter is $counter";
#    #counter=$((counter+1))
#    ((counter++))
#    sleep 1
#done


function score_sum {
    sum=0
    while true; do
        read -p "enter a score: " score

        if [ $score == "q" ]; then
            break
        fi

        sum=$(($sum+$score))
        echo "total score:" $sum
    done    
}

score_sum

function create_file() {
    file_name=$1
    is_shell_script=$2
    touch $file_name
    echo "file $file_name added"
    if [ $is_shell_script = true ]; then
        chmod u+x $file_name
        echo "Adding excuting permission";
    fi   
    #return "what ever the value am returing which i can assign to variable"     
}

create_file test.txt
create_file myfile.yaml
create_file myscript.sh true

function sum() {
    total=$(($1+$2))
    #return $total
    echo "$total"
}

totalsum=$(sum 1 2)
echo "this total sum is $totalsum"

function calculate_sum {
  local result=$(( $1 + $2 ))
  return $result
}

result=$(calculate_sum 3 5)
echo "The calculated result is $result"
# access environment variable
echo "the value of the DB_PASS env value is $DB_PASS"