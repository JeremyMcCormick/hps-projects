#!/bin/bash
(

# ROOT has to be setup because LD_LIBRARY_PATH cannot be modified in Python.
. /sw/root/install/bin/thisroot.sh

# Setup path for hps python tools.
export PYTHONPATH=/work/slac/hps-python-tools/python/:$PYTHONPATH

# no force
#luigi --module sim_compare_batch SimCompareTask --local-scheduler

# test with a few events
#luigi --module hps.batch.jobs.sim_compare SimCompareTask --SimCompareTask-force --local-scheduler --SlicBaseTask-nevents=10 --HpsSimBaseTask-nevents=10

# force
luigi --module hps.batch.jobs.sim_compare SimCompareTask --SimCompareTask-force --local-scheduler
)
