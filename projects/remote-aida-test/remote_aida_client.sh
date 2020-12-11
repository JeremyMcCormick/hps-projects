java -cp ./hps-distribution-bin.jar org.hps.online.recon.remoteaida.HistClient \
    --port 3001 \
    --name RmiAidaAgg \
    --host $(hostname) \
    --dir /agg
    --width 1400 --height 800
