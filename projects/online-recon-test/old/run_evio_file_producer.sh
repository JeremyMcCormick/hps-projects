# 2015 data
#java -Djava.util.logging.config.file=logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -e /work/slac/data/hps_005772.evio.0 -f ETBuffer -d 50 -c 10

# 2019 data
#java -Djava.util.logging.config.file=logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -e skim_hpsecal_000084.evio.00000 -f ETBuffer -d 500 -c 1

java -Djava.util.logging.config.file=evio_logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -f ETBuffer -d 100 -e 1 $@
#hps_007798_startrun.evio.0 hps_007798_startrun.evio.0
