#! /bin/sh
cd "${DATA_DIR}"
java -jar ${DATA_DIR}/lib/mserver.jar --noconsole --nohup </dev/null >minimserver.out 2>&1 &

