#!/usr/bin/python3
# -*- coding:utf-8 -*-
import logging
import sys
from epaper import epd7in5_V2
from PIL import Image
import traceback

logging.basicConfig(level=logging.DEBUG)

try:
    logging.info("epd7in5_V2 Magic mirror write")
    epd = epd7in5_V2.EPD()
    logging.info("init and Clear")
    epd.init()
    epd.Clear()
    Himage = Image.open(sys.argv[1])
    epd.display(epd.getbuffer(Himage))
except IOError as e:
    logging.info(e)

