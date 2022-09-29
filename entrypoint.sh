#!/bin/sh

rtsp-simple-server &

gst-launch-1.0 -e videotestsrc pattern=smpte \
! video/x-raw,width=1280,height=720 \
! textoverlay text="Right" valignment=center halignment=center font-desc="Sans, 72" \
! timeoverlay \
! x264enc \
! queue \
! rtspclientsink location=rtsp://localhost:8554/mystream
