#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

# Change to project directory
#cd /home/sbl/gawcurcra15/Examples

echo Copying the Barzel et al compiled code into the project directory | tee -a $log
cp -v -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware2/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2
cp -v -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware3/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3 

#echo Executing SupplementaryScripts2 | tee -a $log
#cd /home/sbl/barzel_et_al_2013/code/SupplementarySoftware2
#./run_RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85

echo Executing SupplementaryScripts3 | tee -a $log
cd /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3
./run_RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85

#sleep 2
#./Make 2>&1 | tee -a $log

echo Completed analysis | tee -a $log
$SHELL