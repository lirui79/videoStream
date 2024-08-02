#!/bin/bash

VFILE=$1
CHNUM=$2


#ffmpeg -i rtmp://input/stream -c copy -f flv rtmp://output/stream
   
for ((CHIDX=0; CHIDX < CHNUM; ++CHIDX))
do
  nohup ./ffmpeg -rtsp_transport tcp -i ${VFILE} -c copy -f rtsp -rtsp_transport tcp rtsp://127.0.0.1:8554/ch${CHIDX} &
done

