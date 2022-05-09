#!/bin/sh
# filename: tun-up

if [ "$IFACE" = tun0 ]; then
  echo "tun0 up"
fi
if [ "$IFACE" != tun0 ]; then
  /startup/run.sh &> /startup/feedback.txt &
  cd /startup/
  ./firewall-rules.sh &> /startup/firewall-rules.sh &
  echo "tun0 down"
fi
