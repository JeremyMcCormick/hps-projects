#!/bin/bash

# 
# Start the monitoring app, with or without config, using local conditions
# db file if it exists and a local logging properties file if it is present.
#

# local conditions db
DBFILE=hps_conditions.db
DBPROP=""

# local logging prop file
LOGFILE=logging.properties
LOGPROP=""

# path to jar file
JARFILE=./hps-distribution-bin.jar

if [ -f "$DBFILE" ]; then
    echo "Using local conditions db: $DBFILE"
    DBPROP=-Dorg.hps.conditions.url=jdbc:sqlite:$DBFILE
else 
    echo "No local conditions db was found."
fi

if [ -f "$LOGFILE" ]; then
    echo "Using local log properties file: $LOGFILE"
    LOGPROP=-Djava.util.logging.config.file=$LOGFILE
else
    echo "No local log properties file was found."
fi

if [[ ! -f "$JARFILE" ]]; then
    echo "ERROR: Missing jar file at $JARFILE (setup a symlink if does not exist)"
    exit
else
    echo "Using jar file: $JARFILE"
fi

CMD="java $DBPROP $LOGPROP -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main"

if [ -z "$1" ]; then 
    echo "No initial config was provided."
else
    if [ -f "$1" ]; then
        CMD="${CMD} -c $1"
        echo "Using config properties file: $1"
    else
        echo "ERROR: Config properties file $1 does not exist!"
        exit
    fi
fi

echo "Starting monitoring app with command: $CMD"
$CMD
