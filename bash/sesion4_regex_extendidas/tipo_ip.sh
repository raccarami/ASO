#!/bin/bash

ip="$1"

if [[ "$ip" =~ ^127\. ]]; then
    echo "$ip es una dirección loopback"
elif [[ "$ip" =~ ^(10\.|192\.168\.|172\.(1[6-9]|2[0-9]|3[0-1])\.) ]]; then
    echo "$ip es una dirección privada"
else
    echo "$ip es una dirección pública"
fi

