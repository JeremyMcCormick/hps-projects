#luigi --module hps.batch.jobs.slic_recon SlicTask --SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' --local-scheduler

rm *.slcio

luigi --module hps.batch.jobs.slic_recon SlicReadoutTask \
--SlicTask-nevents 100 \
--SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' \
--SlicFilterTask-output-file slicFilteredEvents.slcio \
--SlicReadoutTask-steering /org/hps/steering/readout/SimpleHodoscopeTrigger.lcsim \
--SlicReadoutTask-nevents 25000 \
--SlicReadoutTask-detector HPS-PhysicsRun2019-v1-4pt5 \
--SlicReadoutTask-run-number 1000000 \
--SlicReadoutTask-output-file slicReadoutEvents.slcio \
--local-scheduler

