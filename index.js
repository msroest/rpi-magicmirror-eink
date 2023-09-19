const puppeteer = require('puppeteer-core');

// config variables
const config = require('./config.js');
// as a best practice
// all global variables should be referenced via global. syntax
// and their names should always begin with g
global.gConfig = config;

const fileName = 'mm.png';
let d = new Date();

async function go() {
// open puppeteer
const browser = await puppeteer.launch({
  args: ['--no-sandbox', '--disable-setuid-sandbox', '--headless', '--disable-gpu'],
  executablePath: global.gConfig.chromium_path
})

// create a new virtual window/page in puppeteer
const page = await browser.newPage();

// set the virtual browser width and size
// should be the same as the eink display
await page.setViewport({
  width: global.gConfig.display_width,
  height: global.gConfig.display_height
});

// open the MagicMirror site with puppeteer
await page.goto(`http://${global.gConfig.magicmirror_host}:${global.gConfig.magicmirror_port}`);

// wait x seconds to load the complete content of the MagicMirror site
// change it in config.js "wait_to_load"
await new Promise(r => setTimeout(r, global.gConfig.wait_to_load*1000));

await page.screenshot({path: fileName});

await browser.close();

}

go().then(() => console.log("Completed generating screen shot")).catch((e) => {
	console.error(`Error generating screenshot: ${e}`); process.exit(1);});
