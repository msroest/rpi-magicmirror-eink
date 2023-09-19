var config = {
  "magicmirror_host": process.env["MAGICMIRROR_HOST"] || "localhost",
  "magicmirror_port": process.env["MAGICMIRROR_PORT"] || "8080", // magic mirror port
  "display_width": parseInt(process.env["DISPLAY_WIDTH"] || "800", 10), // eink display height in px
  "display_height": parseInt(process.env["DISPLAY_HEIGHT"] || "480", 10), // eink display width in px
  "wait_to_load": parseInt(process.env["LOAD_DELAY"] || "10", 10), // wait seconds to load the site and display all data
  "chromium_path": process.env["CHROMIUM_PATH"] || "/usr/bin/chromium"
};

/*************** DO NOT EDIT THE LINE BELOW ***************/
if (typeof module !== "undefined") {module.exports = config;}
