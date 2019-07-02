
HADD=`which hadd`
if [ -z "$HADD" ]; then
    echo "ERROR: The 'hadd' commnd was not found.  Source the 'thisroot.sh' setup script from your ROOT installation."
    exit 1
fi

java -Djava.util.logging.config.file=server_logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:$PWD/hps_conditions.db -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -w $PWD/scratch 

#-s 50 -b MY_RECON_STAT 
#-a $PWD/scratch/combined_plots.root -i 120
