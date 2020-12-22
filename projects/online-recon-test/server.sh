rm logs/server.log &> /dev/null
bin/hps-recon-server -w $PWD/scratch &
echo $!
