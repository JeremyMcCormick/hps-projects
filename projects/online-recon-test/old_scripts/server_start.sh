#!/bin/sh

scratchdir=$PWD/scratch
mkdir $scratchdir &> /dev/null

db=/work/slac/data/conditions/hps_conditions_2020_08_17.db

java -Djava.util.logging.config.file=$PWD/logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:${db} -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -w $PWD/scratch 

# --illegal-access=permit 
