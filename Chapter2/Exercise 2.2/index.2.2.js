const path = require("path");
const fs = require("fs");
const util = require("util");

const readdir = util.promisify(fs.readdir);
const stat = util.promisify(fs.stat);

const search = async (pth, extend) => {
  if (path.extname(pth) === extend) console.log(pth);
  else if ((await stat(pth)).isDirectory()) {
    files = await readdir(pth);
    files.forEach((file) => {
      search(path.join(pth, file), extend);
    });
  }
};

printFiles = async (path, extend) => {
  try {
    search(path, extend);
  } catch (err) {
    console.error(err);
  }
};

printFiles("test", ".js");
