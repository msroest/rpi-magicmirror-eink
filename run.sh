#!/bin/bash
MAGICMIRROR_HOST=localhost
MAGICMIRROR_PORT=8080
DISPLAY_WIDTH=800
DISPLAY_HEIGHT=480
DISPLAY_MODEL=epd7in5_V2
LOAD_DELAY=10

if [ -f $(dirname "$0")/config.sh ]; then
   source $(dirname "$0")config.sh
fi
docker pull msroest/rpi-magicmirror-eink:latest
docker run -it --rm -e MAGICMIRROR_HOST=$MAGICMIRROR_HOST -e MAGICMIRROR_PORT=$MAGICMIRROR_PORT -e DISPLAY_WIDTH=$DISPLAY_WIDTH -e DISPLAY_HEIGHT=$DISPLAY_HEIGHT -e LOAD_DELAY=$LOAD_DELAY -v ./out:/opt/app/out msroest/rpi-magicmirror-eink:latest
$(dirname "$0")/imagewrite.py $DISPLAY_MODEL out/mm.png