# After 60 seconds the loop will exit
timeout=${TIMEOUT:=60}
file_path="${SOCKET_PATH:=/run/iotedge/sockets/workloadapi.sock}"

if [[ -z ${SPIFFE_ENABLED} || $SPIFFE_ENABLED != "true" ]]; then
  exit 0
fi

while [ ! -S $file_path ];
do
  # When the timeout is equal to zero, show an error and leave the loop.
  if [ "$timeout" == 0 ]; then
    echo "ERROR: Timeout while waiting for the file $file_path to be created"
    exit 1
  fi

  sleep 1

  # Decrease the timeout of one
  timeout=$((timeout-1))
done

echo "FOUND: $file_path, init container done"