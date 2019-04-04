#luigi --module hps.batch.jobs.slic_recon SlicTask --SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' --local-scheduler

rm slicEvents.slcio

log=job.log
luigi --module hps.batch.jobs.slic_recon SlicTask \
--SlicTask-detector HPS-HodoscopeTest-v1 \
--SlicTask-nevents 10000 \
--SlicTask-stdhep-files '["tritrigv2_MG5_ESum2GeV_15.stdhep"]' \
--local-scheduler \
&> job.log &

echo "Writing output to: $log"
