./cleanup.sh
./clear.sh
luigi --module hps.batch.jobs.dqm_pipeline_jlab SubmitEvioJobsTask \
--submit \
--EvioFileScannerTask-evio-dir $PWD \
--memory 3000 \
--nevents 100 \
--local-scheduler &> run.log &
