rm *.slcio *.pairs1 *.root
luigi --module hps.batch.jobs.sim_recon_compare SimReconCompareTask --local-scheduler
