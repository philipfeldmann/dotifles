export const readJSON = (path) => JSON.parse(fs.readFileSync(path).toString());
