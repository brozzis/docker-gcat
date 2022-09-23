#!/usr/bin/with-contenv sh

(
  flock -n 200 || exit 1

  cmd="echo ciao > /tmp/test && sleep 100"

  echo "Executing => $cmd"
  eval "$cmd"
) 200>/var/lock/cmd.lock