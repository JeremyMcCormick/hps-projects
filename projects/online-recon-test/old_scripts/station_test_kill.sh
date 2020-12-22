ps aux | grep ETStationExample | grep -v grep | awk '{ print $2 }' | xargs kill -9
