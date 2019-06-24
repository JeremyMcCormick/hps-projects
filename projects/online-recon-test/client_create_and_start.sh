#java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client --host localhost --port 22221 start -c $PWD/config.properties -n 4

java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.online.recon.Client --host localhost --port 22221 create -s -n 4
