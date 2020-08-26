import sys

from pyLCIO.io.EventLoop import EventLoop
from pyLCIO.drivers.EventMarkerDriver import EventMarkerDriver
from pyLCIO.drivers.Driver import Driver
from pyLCIO import UTIL
from examples.exampleDrivers.McParticlePlotDriver import McParticlePlotDriver
from ROOT import TFile

class MyDriver(Driver):

    def processEvent(self, event):
        print('My driver processing event: {}'.format(event.getEventNumber()))

class DumpEventDriver(Driver):

    def processEvent(self, event):
        UTIL.LCTOOLS.dumpEventDetailed(event)

class RootOutputDriver(Driver):

    def __init__(self, filename):
        self.filename = filename
        if self.filename is None:
            raise Exception('The filename is None')
        self.tfile = TFile(filename, 'CREATE')
        super().__init__()

    def endOfData(self):
        self.tfile.Write()
        self.tfile.Close()

class MyMcParticlePlotDriver(McParticlePlotDriver):

    def endOfData(self):
        """Override the super method to disable interactive prompt."""
        pass

if __name__ == '__main__':

    if len(sys.argv) < 2:
        raise Exception('No input files provided.')

    input_files = sys.argv[1:]
    print('input files: {}'.format(str(input_files)))

    loop = EventLoop()
    loop.addFiles(input_files)
    loop.add(EventMarkerDriver())
    #loop.add(MyDriver())
    #loop.add(DumpEventDriver()) # dump out event info to console
    loop.add(MyMcParticlePlotDriver())
    loop.add(RootOutputDriver('plots.root'))

    print('Running loop...')
    loop.loop()
    print('Done running loop!')
