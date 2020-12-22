rm scratch/stat_test_*.log &> /dev/null
pids=""
for i in 1 2 3 4
do
  logfile=scratch/stat_test_${i}.log
  cmd="java -cp ./hps-distribution-bin.jar org.hps.online.recon.example.ETStationExample ${i}"
  ${cmd} >> ${logfile} 2>&1 &
  pids="${pids} $!" 
done
echo $pids
echo $pids > station_test.pids
