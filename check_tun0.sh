#!bin/bash

for i in tun0
  do OUT="$(ip a show $i up)";

    if [[ $OUT == *"does not exist."* ]]; then
      echo "$i is down"
    else
      echo "$i is up"    
    fi

done
