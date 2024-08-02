#!/bin/bash

VFILE=$1
CHNUM=$2

for ((CHIDX=0; CHIDX < CHNUM; ++CHIDX))
do
  nohup ./ffmpeg -stream_loop -1 -re -i ${VFILE} -vcodec copy -muxdelay 0.1 -f rtsp -rtsp_transport tcp rtsp://127.0.0.1:8554/ch${CHIDX} &
done

