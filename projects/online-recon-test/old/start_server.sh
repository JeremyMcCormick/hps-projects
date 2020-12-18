
HADD=`which hadd`
if [ -z "$HADD" ]; then
    echo "ERROR: hadd was not found.  Source the thisroot.sh setup script."
    exit 1
fi

#java --illegal-access=permit -Djava.util.logging.config.file=$PWD/logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:$PWD/hps_conditions.db -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -p 22221 -w $PWD/scratch -s 50 -b MY_RECON_STAT -a $PWD/scratch/combined_plots.root -i 120

db=/work/slac/data/conditions/hps_conditions_2020_08_17.db

java --illegal-access=permit -Djava.util.logging.config.file=$PWD/logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:$db -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -w $PWD/scratch 

#-s 50 -b MY_RECON_STAT 
#-a $PWD/scratch/combined_plots.root -i 120
