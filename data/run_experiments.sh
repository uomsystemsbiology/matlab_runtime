#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

# Change to project directory
#cd /home/sbl

echo To use compiled MATLAB code you may need to copy it into a specific \nproject directory | tee -a $log

echo "Then cd into the project directory and execute the code" | tee -a $log
echo "using a syntax like: \n./RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85" | tee -a $log
echo "Note that the execution directory often has to be the code directory" | tee -a $log
echo "so you will need to CD into it before execution" | tee -a $log

#sleep 2
#./Make 2>&1 | tee -a $log

echo Completed analysis | tee -a $log
$SHELL