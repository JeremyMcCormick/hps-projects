echo "Stopping all stations..."
./bin/hps-recon-client --host localhost stop
echo "Removing all stations..."
./bin/hps-recon-client --host localhost remove
echo "Done!"
