#java -Djava.util.logging.config.file=client_logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client plot-add -d -a -t $PWD/scratch/combined_plots.root -T 1 -p 60
# -T 4

java -Djava.util.logging.config.file=client_logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client plot-add -t $PWD/scratch/combined_plots.root -T 1 -p 180
