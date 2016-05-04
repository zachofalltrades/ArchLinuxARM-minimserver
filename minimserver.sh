#!/bin/sh
cd "${APP_DATA}"
java -jar /usr/lib/minimserver/lib/mserver.jar --noconsole --nohup </dev/null >minimserver.out 2>&1 &

