rm logs/aggregator.log &> /dev/null
bin/hps-recon-aggregator ./aggregator.properties &
echo $!
until [ -f ./logs/aggregator.log ]
do
  sleep 1
done
tail -f logs/aggregator.log
