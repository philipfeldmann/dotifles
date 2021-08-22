#!/usr/bin/env zx
import { readJSON } from "./utility.mjs";

const snaps = readJSON("snaps.json");
const pacman = readJSON("pacman.json");


const installSnapApps = async () => {
  console.log(chalk.green("Installing some apps via snap 📟"));
  await Promise.all(snaps.map(async (app) => await $`snap install ${app}`));
}

const installPacmanDependencies = async () => {
  console.log(chalk.green("Installing some pacman dependencies 📟"));
  await $`pacman -Syu ${pacman.join(" ")} --noconfirm`
}

const runAll = async () => {
  console.log(chalk.bold.magentaBright("Beep Bop... Setting up your machine 🤖"));
  await installPacmanDependencies();
  await installSnapApps();
}

await runAll();
