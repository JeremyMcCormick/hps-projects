#java -Dorg.hps.conditions.url=jdbc:sqlite:hps_conditions.db -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main -c hodo.prop

java -Djava.util.logging.config.file=logging.properties -cp ./hps-distribution-bin.jar org.hps.monitoring.application.Main -c hodo.prop
