rm logs/server.log &> /dev/null
bin/hps-recon-server --host localhost -w $PWD/scratch -c ./config_test.properties &
echo $!
until [ -f logs/server.log ]
do
  sleep 1
done
tail -f logs/server.log
