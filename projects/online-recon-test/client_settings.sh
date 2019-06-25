#java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client --host localhost --port 22221 settings --start 42 --basename HERP_DERP --workdir /tmp

#java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client --host localhost --port 22221 settings

java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client settings --start 1
