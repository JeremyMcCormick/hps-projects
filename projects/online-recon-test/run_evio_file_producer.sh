#java -Djava.util.logging.config.file=logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -e /work/slac/data/hps_005772.evio.0 -f ETBuffer -d 50 -c 10

#java -Djava.util.logging.config.file=logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -e hps_007799_1000evt.evio.20 -f ETBuffer -d 500 -c 1

java -Djava.util.logging.config.file=logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -e hps_007798_startrun.evio.0 -e hps_007798_endrun.evio.408 -f ETBuffer -d 250 -c 1
