#!/bin/sh

java -Djava.util.logging.config.file=evio_logging.properties -cp $PWD/hps-distribution-bin.jar org.hps.record.evio.EvioFileProducer -f /tmp/ETBuffer -d 1000 -e 1 $@
