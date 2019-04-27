luigi --module hps.batch.jobs.evio2lcio EvioToLcio \
--evio-files '["hps_007457_1000evts.evio.0"]' \
--detector HPS-PhysicsRun2016-Nominal-v5-0-fieldmap \
--event-print-interval 1 \
--output-file recon \
--lcio-output-file raw.slcio \
--nevents 100 \
--steering /org/hps/steering/recon/PhysicsRun2016FullRecon.lcsim \
--resource \
--local-scheduler 
