#!/bin/bash
base="tp_"
st=$1
echo "doing container $st" 
docker exec $base$st ipch
