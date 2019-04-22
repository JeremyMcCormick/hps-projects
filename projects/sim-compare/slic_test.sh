#luigi --module hps.batch.tasks SlicBaseTask --SlicBaseTask-mac /work/slac/hps-sim-compare/slic_init.mac --local-scheduler

rm slicEvents.slcio
#luigi --module hps.batch.tasks SlicBaseTask --local-scheduler
#luigi --module hps.batch.tasks SlicBaseTask --SlicBaseTask-nevents=1 --local-scheduler
slic -g /work/slac/hps-java/hps-java/detector-data/detectors/HPS-PhysicsRun2016-Pass2/HPS-PhysicsRun2016-Pass2.lcdd -m slic_gun.mac -m vis.mac -n
