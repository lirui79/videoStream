#!/bin/bash

VFILE=$1
CHNUM=$2

for ((CHIDX=0; CHIDX < CHNUM; ++CHIDX))
do
  nohup ./rtsp_alive.sh ${VFILE} ${CHIDX} &
done

