#luigi --module hps.batch.jobs.slic_recon SlicTask --SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' --local-scheduler

rm *.slcio

log=job.log
luigi --module hps.batch.jobs.slic_recon SlicReadoutTask \
--SlicTask-detector HPS-HodoscopeTest-v1 \
--SlicTask-nevents 1000 \
--SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' \
--SlicTask-output-file slicHodoTestEvents.slcio \
--SlicFilterTask-output-file slicFilteredHodoTestEvents.slcio \
--SlicFilterTask-nevents 250000 \
--SlicReadoutTask-steering /org/hps/steering/readout/SimpleHodoscopeTriggerNoTracker.lcsim \
--SlicReadoutTask-detector HPS-HodoscopeTest-v1 \
--SlicReadoutTask-run-number 1000000 \
--SlicReadoutTask-output-file slicReadoutHodoTestEvents.slcio \
--local-scheduler \
&> job.log &

echo "Writing output to: $log"

#--SlicReadoutTask-nevents 250000 \
