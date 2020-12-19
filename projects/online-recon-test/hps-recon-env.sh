#!/bin/sh

##########################################
# Shell environment for HPS online recon #
##########################################

# ET buffer file
etfile=/tmp/ETBuffer

# Path to hps-java distribution jar (can be a symlink)
jarfile=$PWD/hps-distribution-bin.jar

# Scratch directory for server and stations
scratchdir=$PWD/scratch

# Local conditions db file
if [ -z "$CONDITIONS_DB" ]
then
  # my local db as default (change it)
  db=/work/slac/data/conditions/hps_conditions_2020_08_17.db
else
  db=$CONDITIONS_DB
fi

# Command to run the client
client_cmd="java -Djava.util.logging.config.file=./client_logging.properties -cp $jarfile org.hps.online.recon.Client"

# Command to run the plot aggregator
agg_cmd="java -Djava.util.logging.config.file=./aggregator_looging.properties -cp $jarfile org.hps.online.recon.Aggregator"

# Command to run the EVIO file producer
prod_cmd="java -Djava.util.logging.config.file=./evio_logging.properties -cp $jarfile org.hps.record.evio.EvioFileProducer -f $etfile -d 1000 -e 1"

# Command to run the ET ring
et_cmd="et_start -p 11111 -f $etfile -n 100 -s 200000 -v -d"

# Command to run the server
server_cmd="java -Djava.util.logging.config.file=./server_logging.properties -Dorg.hps.conditions.url=jdbc:sqlite:${db} -cp $jarfile org.hps.online.recon.Server -w $PWD/scratch"


error () {
    echo "ERROR: $1"
}

hps-recon-create () {
  $client_cmd create $@
}

hps-recon-config () {
  $client_cmd config $@
}

hps-recon-console () {
  $client_cmd 
}

hps-recon-aggregator-start () {
  $agg_cmd $@
}

hps-recon-cmd-help () {
  if [ -z "$1" ]; then
    error "Missing name of command"
    return 1
  fi
  $client_cmd $1 --help
}

hps-recon-list () {
  $client_cmd list $@
}

hps-recon-remove () {
  $client_cmd remove $@
}

hps-recon-start () {
  $client_cmd start $@
}

hps-recon-settings () {
  $client_cmd settings $@
}

hps-recon-status () {
  $client_cmd status -v $@
}

hps-recon-stop () {
  $client_cmd stop $@
}

hps-recon-producer-start () {
  $prod_cmd $@
}

hps-recon-et-start () {
  rm $etfile &> /dev/null
  if [ -f "$etfile" ]
  then
    error "Failed to delete old ET file: $etfile"
    return 1
  fi
  $et_cmd
}

hps-recon-server-start () {
  mkdir $scratchdir &> /dev/null
  if [[ ! -d "$scratchdir" ]]
  then
    error "Failed to create scratch dir at: $scratchdir"
    return 1
  fi
  $server_cmd $@
}

hps-recon-cleanup () {
  $client_cmd cleanup $@
}

hps-recon-config () {
  $client_cmd config $@
}

hps-recon-exec () {
  if [ -z "$1" ]; then
    error "Missing name of file with commands to execute"
    return 1
  fi
  $client_cmd $1
}

hps-recon-help () {
  $client_cmd --help
}
