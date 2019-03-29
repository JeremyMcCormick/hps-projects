rm simEvents.slcio
luigi --module hps.batch.tasks HpsSimBaseTask --HpsSimBaseTask-nevents=1 --local-scheduler
