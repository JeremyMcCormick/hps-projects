######################################################
# Example online recon station settings for 2016 data
######################################################

# lcsim detector name for conditions
prop-set lcsim.detector HPS-PhysicsRun2016-Pass2

# lcsim steering resource
prop-set lcsim.steering /org/hps/steering/recon/PhysicsRun2016FullRecon_RemoteAida.lcsim

# run number for conditions
prop-set lcsim.run 7798

# local conditions database file
prop-set lcsim.conditions jdbc:sqlite:/work/slac/data/conditions/hps_conditions_2020_08_17.db

# event builder
prop-set lcsim.builder org.hps.evio.LCSimEngRunEventBuilder

# logging file (default uses class resource)
#prop-set station.loggingConfig ../../station_logging.properties

# name of ET buffer file
prop-set et.buffer /tmp/ETBuffer

# name of ET host
prop-set et.host localhost

# ET connection port
prop-set et.port 11111

# ET log level
prop-set et.logLevel 4

# ET wait time (ignored for sleep mode)
prop-set et.waitTime 0

# ET mode (sleep)
prop-set et.mode 0

# ET chunk size (number of events to read at once)
prop-set et.chunk 20

# ET prescale for the station
prop-set et.prescale 1

# Number of ET connection attempts to make before quitting
prop-set et.connectionAttempts 10

# Create a station and start it
create -s 1
