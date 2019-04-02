rm pulserPlots.root

luigi --module hps.batch.jobs.pulser_overlay PulserAnalTask --local-scheduler
