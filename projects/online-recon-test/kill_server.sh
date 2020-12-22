ps aux | grep ServerLogging | grep -v grep | awk '{print $2}' | xargs kill -9
