#java --illegal-access=permit -Djava.util.logging.config.file=$PWD/logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:$PWD/hps_conditions.db -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -p 22221 -w $PWD/scratch -s 50 -b MY_RECON_STAT -a $PWD/scratch/combined_plots.root -i 120

java --illegal-access=permit -Djava.util.logging.config.file=$PWD/logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:$PWD/hps_conditions.db -cp ./hps-distribution-bin.jar org.hps.online.recon.Server -c config.properties -p 22221 -w $PWD/scratch 
#-s 50 -b MY_RECON_STAT 
#-a $PWD/scratch/combined_plots.root -i 120
