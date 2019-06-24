for cmd in create start stop remove list config cleanup; do
    java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client $cmd --help
   echo
done
