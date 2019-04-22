nam=Detector2019TestEvents
det=HPS-PhysicsRun2019-v0-4pt5
#readout_steering=/org/hps/steering/readout/PhysicsRun2016TrigPairs1.lcsim
readout_steering=/org/hps/steering/readout/SimpleHodoscopeTrigger.lcsim
sim_events=100000
readout_events=25000000

log=job.log
luigi --module hps.batch.jobs.slic_recon SlicReadoutTask \
--SlicTask-detector $det \
--SlicTask-nevents $sim_events \
--SlicTask-output-file slic${nam}.slcio \
--SlicTask-stdhep-files '["tritrigv2_MG5_ESum1GeV_1.stdhep", "tritrigv2_MG5_ESum1GeV_10.stdhep", "tritrigv2_MG5_ESum1GeV_11.stdhep", "tritrigv2_MG5_ESum1GeV_12.stdhep", "tritrigv2_MG5_ESum1GeV_13.stdhep", "tritrigv2_MG5_ESum1GeV_14.stdhep", "tritrigv2_MG5_ESum1GeV_15.stdhep", "tritrigv2_MG5_ESum1GeV_16.stdhep", "tritrigv2_MG5_ESum1GeV_17.stdhep", "tritrigv2_MG5_ESum1GeV_18.stdhep", "tritrigv2_MG5_ESum1GeV_19.stdhep", "tritrigv2_MG5_ESum1GeV_2.stdhep", "tritrigv2_MG5_ESum1GeV_20.stdhep", "tritrigv2_MG5_ESum1GeV_3.stdhep", "tritrigv2_MG5_ESum1GeV_4.stdhep", "tritrigv2_MG5_ESum1GeV_5.stdhep", "tritrigv2_MG5_ESum1GeV_6.stdhep", "tritrigv2_MG5_ESum1GeV_7.stdhep", "tritrigv2_MG5_ESum1GeV_8.stdhep", "tritrigv2_MG5_ESum1GeV_9.stdhep", "tritrigv2_MG5_ESum2GeV_15.stdhep"]' \
--SlicFilterTask-output-file slicFiltered${nam}.slcio \
--SlicFilterTask-nevents $readout_events \
--SlicReadoutTask-steering $readout_steering \
--SlicReadoutTask-detector $det \
--SlicReadoutTask-run-number 1000000 \
--SlicReadoutTask-output-file slicReadout${nam}.slcio \
--SlicReadoutTask-nevents $readout_events \
--local-scheduler 
