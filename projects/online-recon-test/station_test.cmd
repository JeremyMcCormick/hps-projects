######################################################
# Example online recon station settings for 2016 data
######################################################

# lcsim detector name for conditions
set lcsim.detector HPS-PhysicsRun2016-Pass2

# lcsim steering resource
set lcsim.steering /org/hps/steering/recon/PhysicsRun2016OnlineRecon.lcsim

# run number for conditions
set lcsim.run 7798

# local conditions database file
set lcsim.conditions jdbc:sqlite:/work/slac/data/conditions/hps_conditions_2020_08_17.db

# Create stations and start them
create -s 2
