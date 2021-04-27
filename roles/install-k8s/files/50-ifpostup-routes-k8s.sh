#!/bin/bash
  
if [ "$IFACE" == "ens3" ];
then
        ip route add 10.30.0.0/20 via 10.11.19.254 dev ens3
        ip route add 10.20.6.0/24 via 10.11.19.254 dev ens3
        ip route del 10.0.0.0/8 via 10.11.19.254 dev ens3
fi

