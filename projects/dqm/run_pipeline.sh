rm *.root &> /dev/null
luigi --module hps.batch.jobs.dqm_pipeline DQMPipelineTask --EvioFileProcessorTask-nevents 100 --local-scheduler &> run.log &
