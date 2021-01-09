ps | grep java | awk '{if(NR>1)print $1}' | xargs kill -9
