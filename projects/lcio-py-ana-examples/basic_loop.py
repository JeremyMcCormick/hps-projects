import sys

from pyLCIO.io.EventLoop import EventLoop
from pyLCIO.drivers.EventMarkerDriver import EventMarkerDriver
from pyLCIO.drivers.Driver import Driver
from pyLCIO import UTIL
from examples.exampleDrivers.McParticlePlotDriver import McParticlePlotDriver

class MyDriver(Driver):

    def processEvent(self, event):
        print('My driver processing event: {}'.format(event.getEventNumber()))

class DumpEventDriver(Driver):

    def processEvent(self, event):
        UTIL.LCTOOLS.dumpEventDetailed(event)

if __name__ == '__main__':

    if len(sys.argv) < 2:
        raise Exception('No input files provided.')

    input_files = sys.argv[1:]
    print('input files: {}'.format(str(input_files)))

    loop = EventLoop()
    loop.addFiles(input_files)
    loop.add(EventMarkerDriver())
    loop.add(MyDriver())
    #loop.add(DumpEventDriver()) # dump out event info to console
    loop.add(McParticlePlotDriver()) # TODO: override interactive prompt at end
    # TODO: write ROOT file from Driver with plots

    print('Running loop...')
    loop.loop()
    print('Done running loop!')
