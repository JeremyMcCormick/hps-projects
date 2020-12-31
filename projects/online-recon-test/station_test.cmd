######################################################
# Example online recon station settings for 2016 data
######################################################

# lcsim detector name for conditions
set lcsim.detector HPS-PhysicsRun2016-Pass2

# lcsim steering resource
set lcsim.steering /org/hps/steering/recon/PhysicsRun2016FullRecon_RemoteAida.lcsim

# run number for conditions
set lcsim.run 7798

# local conditions database file
set lcsim.conditions jdbc:sqlite:/work/slac/data/conditions/hps_conditions_2020_08_17.db

# event builder
set lcsim.builder org.hps.evio.LCSimEngRunEventBuilder

# logging file (default uses class resource)
set station.loggingConfig ../../station_logging.properties

# name of ET buffer file
set et.buffer /tmp/ETBuffer

# name of ET host
set et.host localhost

# ET connection port
set et.port 11111

# ET log level
set et.logLevel 4

# ET wait time (ignored for sleep mode)
set et.waitTime 0

# ET mode (sleep)
set et.mode 0

# ET chunk size (number of events to read at once)
set et.chunk 1

# ET prescale for the station
set et.prescale 1

# Number of ET connection attempts to make before quitting
set et.connectionAttempts 10

# Create stations and start them
create -s 4
