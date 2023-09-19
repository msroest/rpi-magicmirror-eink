var config = {
  "magicmirror_host": "ganymede.internal.roe.st",
  "magicmirror_port": 8082, // magic mirror port
  "display_width": 800, // eink display height in px
  "display_height": 480, // eink display width in px
  "wait_to_load": 10, // wait seconds to load the site and display all data
  "chromium_path": "/opt/homebrew/bin/chromium"
};

/*************** DO NOT EDIT THE LINE BELOW ***************/
if (typeof module !== "undefined") {module.exports = config;}
