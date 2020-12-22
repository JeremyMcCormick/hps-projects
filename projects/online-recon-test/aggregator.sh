rm logs/aggregator.log &> /dev/null
bin/hps-recon-aggregator ./aggregator.properties &
echo $!
