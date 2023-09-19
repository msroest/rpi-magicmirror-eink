#!./.venv/bin/python3
# -*- coding:utf-8 -*-
import logging
import sys
import epaper
from PIL import Image

logging.basicConfig(level=logging.DEBUG)

try:
    logging.info("Magic mirror write")
    epd = epaper.epaper(sys.argv[1]).EPD()
    logging.info("init and Clear")
    epd.init()
    epd.Clear()
    Himage = Image.open(sys.argv[2])
    epd.display(epd.getbuffer(Himage))
except IOError as e:
    logging.info(e)

