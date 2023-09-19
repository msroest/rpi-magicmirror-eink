#!/bin/bash
MAGICMIRROR_HOST=localhost
MAGICMIRROR_PORT=8080
DISPLAY_WIDTH=800
DISPLAY_HEIGHT=480
DISPLAY_MODEL=epd7in5_V2
LOAD_DELAY=10

if [ -f $(dirname "$0")/config.sh ]; then
   source $(dirname "$0")/config.sh
fi
npm start
$(dirname "$0")/.venv/bin/python3 $(dirname "$0")/imagewrite.py $DISPLAY_MODEL $(dirname "$0")/out/mm.png