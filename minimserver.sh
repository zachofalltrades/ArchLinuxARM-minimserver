#! /bin/sh
cd "$MINIM_DATA"
java -jar "$MINIM_HOME/mserver.jar" --noconsole --nohup </dev/null >minimserver.out 2>&1 &

