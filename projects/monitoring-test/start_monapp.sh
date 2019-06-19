#!/bin/bash

# 
# Start the monitoring app, with or without config, using local conditions
# db file if it exists.
#

DBFILE=hps_conditions.db
DBPROP=""
JARFILE=./hps-distribution-bin.jar

if [ -f "$DBFILE" ]; then
    echo "Using local conditions db file: $DBFILE"
    DBPROP=-Dorg.hps.conditions.url=jdbc:sqlite:$DBFILE
fi

if [[ ! -f "$JARFILE" ]]; then
    echo "ERROR: Missing jar file at $JARFILE"
    exit
fi

CMD="java $DBPROP -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main"

if [ -z "$1" ]; then 
    echo "Starting monitoring app with no config"
else
    if [ -f "$1" ]; then
        CMD="${CMD} -c $1"
        echo "Starting monitoring app with config $1"
    else
        echo "ERROR: Config prop file $1 does not exist!"
        exit
    fi
fi

echo "Starting monitoring app with command: $CMD"
$CMD
