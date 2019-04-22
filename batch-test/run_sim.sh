nam=Detector2019TestEvents
det=HPS-PhysicsRun2019-v0-4pt5

luigi --module hps.batch.jobs.slic_recon SlicTask \
--SlicTask-detector $det \
--SlicTask-nevents 10000 \
--SlicTask-output-file slic${nam}.slcio \
--SlicTask-stdhep-files '["tritrigv2_MG5_ESum1GeV_1.stdhep", "tritrigv2_MG5_ESum1GeV_10.stdhep", "tritrigv2_MG5_ESum1GeV_11.stdhep", "tritrigv2_MG5_ESum1GeV_12.stdhep", "tritrigv2_MG5_ESum1GeV_13.stdhep", "tritrigv2_MG5_ESum1GeV_14.stdhep", "tritrigv2_MG5_ESum1GeV_15.stdhep", "tritrigv2_MG5_ESum1GeV_16.stdhep", "tritrigv2_MG5_ESum1GeV_17.stdhep", "tritrigv2_MG5_ESum1GeV_18.stdhep", "tritrigv2_MG5_ESum1GeV_19.stdhep", "tritrigv2_MG5_ESum1GeV_2.stdhep", "tritrigv2_MG5_ESum1GeV_20.stdhep", "tritrigv2_MG5_ESum1GeV_3.stdhep", "tritrigv2_MG5_ESum1GeV_4.stdhep", "tritrigv2_MG5_ESum1GeV_5.stdhep", "tritrigv2_MG5_ESum1GeV_6.stdhep", "tritrigv2_MG5_ESum1GeV_7.stdhep", "tritrigv2_MG5_ESum1GeV_8.stdhep", "tritrigv2_MG5_ESum1GeV_9.stdhep", "tritrigv2_MG5_ESum2GeV_15.stdhep"]' \
--local-scheduler 
