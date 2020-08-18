java -Dorg.hps.conditions.url=jdbc:sqlite:/work/slac/data/conditions/hps_conditions_2020_08_17.db -cp ./hps-distribution-bin.jar org.hps.evio.EvioToLcio -l pulser_1.slcio -d HPS-PhysicsRun2019-v2-4pt5 -R 10666 pulser_1.evio

java -Dorg.hps.conditions.url=jdbc:sqlite:/work/slac/data/conditions/hps_conditions_2020_08_17.db -cp ./hps-distribution-bin.jar org.hps.evio.EvioToLcio -l pulser_2.slcio -d HPS-PhysicsRun2019-v2-4pt5 -R 10666 pulser_2.evio

