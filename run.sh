#!/bin/bash
MAGICMIRROR_HOST=localhost
MAGICMIRROR_PORT=8080
DISPLAY_WIDTH=800
DISPLAY_HEIGHT=480
DISPLAY_MODEL=epd7in5_V2
LOAD_DELAY=10
CHROMIUM_PATH=/usr/bin/chromium

if [ -f $(dirname "$0")/config.sh ]; then
   source $(dirname "$0")/config.sh
fi
pushd $(dirname "$0")
MAGICMIRROR_HOST=$MAGICMIRROR_HOST MAGICMIRROR_PORT=$MAGICMIRROR_PORT DISPLAY_WIDTH=$DISPLAY_WIDTH DISPLAY_HEIGHT=$DISPLAY_HEIGHT LOAD_DELAY=$LOAD_DELAY CHROMIUM_PATH=$CHROMIUM_PATH npm start
$(dirname "$0")/.venv/bin/python3 $(dirname "$0")/imagewrite.py $DISPLAY_MODEL $(dirname "$0")/out/mm.png
popd