rm *.root auger.xml DQM_*.sh DQM_*.err DQM_*.out &> /dev/null
./clear.sh
#luigi --module hps.batch.jobs.dqm_pipeline DQMPipelineTask --EvioFileProcessorTask-nevents 100 --local-scheduler &> run.log &
luigi --module hps.batch.jobs.dqm_pipeline_jlab SubmitEvioJobsTask \
--submit \
--EvioFileScannerTask-evio-dir $PWD \
--memory 3000 \
--nevents 100 \
--local-scheduler &> run.log &
