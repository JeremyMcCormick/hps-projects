if [ $# -eq 0 ]
then
    n=1
else
    n=$1
fi

outputname=recon_2016_$n
port="200${n}"

rm $outputname.slcio $outputname.log &> /dev/null

echo "Running remote recon on port ${port} with output: $outputname"

java -cp ./hps-distribution-bin.jar org.hps.evio.EvioToLcio \
    -d HPS-PhysicsRun2016-Pass2 \
    -f evio_files.txt \
    -DoutputFile=$outputname \
    -Dport=${port} \
    -x PhysicsRun2016FullRecon_RemoteAida.lcsim &> $outputname.log

echo "Done!"
#\
#    -e 10
