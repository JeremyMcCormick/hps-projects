rm logs/server.log &> /dev/null
bin/hps-recon-server -w $PWD/scratch &
echo $!
until [ -f logs/server.log ]
do
  sleep 1
done
tail -f logs/server.log
