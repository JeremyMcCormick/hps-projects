ps aux | grep Aggregator | grep -v grep | awk '{print $2}' | xargs kill -9
