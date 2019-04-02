java \
-cp hps-distribution-bin.jar org.hps.evio.EvioToLcio \
-r -x /org/hps/steering/recon/PhysicsRun2016FullRecon.lcsim -d HPS-PhysicsRun2016-v5-3-fieldmap_v4_globalAlign -DoutputFile=scratch.slcio -n 10 \
events.evio

#-Dorg.hps.conditions.url=jdbc:sqlite:hps_conditions.db \
