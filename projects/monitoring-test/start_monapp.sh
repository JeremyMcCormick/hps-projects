#!/bin/bash

if [ -z "$1" ]; then
    echo "Starting monitoring app with no config"
    java -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main
else
    if [ -f "$1" ]; then
        echo "Starting monitoring app with config $1"
        java -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main -c $1
    else
        echo "ERROR: Config prop file $1 does not exist!"
    fi
fi

