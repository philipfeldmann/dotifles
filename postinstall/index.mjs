#!/usr/bin/env zx
import { readJSON } from "./utility.mjs";

const apps = readJSON("apps.json");
const manualInstalls = readJSON("manualInstalls.json");


const installApps = async () => {
  console.log(chalk.green("Installing some apps 📟"));
  await Promise.all(apps.map(async (app) => await $`snap install ${app}`));
}

const runManualInstalls = async () => {
  console.log(chalk.green("Manually installing some stuff 👌"));
  await Promise.all(manualInstalls.map(async (manual) => await $`${manual.cmd}`));
}

const runAll = async () => {
  console.log(chalk.bold.magentaBright("Beep Bop... Setting up your machine 🤖"));
  await runManualInstalls();
  await installApps();
}

await runAll();
