
<p align="center">
  <a href="/LICENSE">
    <img src="https://img.shields.io/github/license/BenRoe/rpi-magicmirror-eink.svg" alt="MIT">
  </a>
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="prs welcome">
</p>
<p align="center">
<img style="max-height:300px" src="cover.jpg">
</p>

## How it works
This is a fork of [rpi-magicmirror-epaper](https://github.com/BenRoe/rpi-magicmirror-eink) from [BenRoe](https://github.com/BenRoe)
Update to build and publish a docker container to minimize drift in chromium.  And simplify the setup by just using linux cron to actually run the script


## Requirements
- Raspberry Pi with Raspbian
- Waveshare epaper display any version supprted by (https://pypi.org/project/waveshare-epaper/)
- running [MagicMirror](https://github.com/MichMich/MagicMirror#server-only) (serveronly)

## Resources
- [3d printable frame](https://www.thingiverse.com/thing:3382910) or [alternate frame](https://www.printables.com/model/324984-waveshare-75-screen-and-rasberry-pi-case_)
- [MagicMirror Module List](https://github.com/MichMich/MagicMirror/wiki/3rd-Party-Modules)

## Install dependencies

  - [Install docker](https://docs.docker.com/engine/install/raspberry-pi-os/#install-using-the-convenience-script)

## Setup
- Clone/copy the project files to your system.
```shell
git clone https://github.com/msroest/rpi-magicmirror-eink.git
```

- Move to the project folder
```shell
cd rpi-magicmirror-eink
```
- [Enable SPI on your raspberrypi](https://www.raspberrypi-spy.co.uk/2014/08/enabling-the-spi-interface-on-the-raspberry-pi/)

- Setup python venv
```shell
python3 -m venv .venv
./.venv/bin/pip3 install -r requirements.txt

```
- Update run.sh variables at the top of the file to set your magicmirror host/port, display resolution and eink model

- Setup a cronjob to run the run script on whatever schedule you'd like
```
*/5 * * * * /path/to/rpi-magicmirror-eink/run.sh > /dev/null 2>&1
```

