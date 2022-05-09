#!bin/bash

for i in tun0
  do OUT="$(ip a show $i up)";

    if [[ $OUT == *"does not exist."* ]]; then
      /startup/run.sh &> /startup/feedback.txt &
      cd /startup/
      ./firewall-rules.sh &> /startup/firewall-rules.sh &
    fi

done
