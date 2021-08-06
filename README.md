# Haxe Shader Demo

This is a minimal demo of getting a custom shader running using haxe. It works on the js target and uses three.js to simplify the setup (raw webgl would take quite a few lines!). For the app, I'm working on an alternative to three.js that we can use on iOS and Android

## Building
- Install haxe: https://haxe.org/download/ (I'm using 4.2.3)
- Install dependencies

	`npm install`
- Compile haxe js with `haxe build.hxml`, this generates `dist/main.js` and `dist/bundle.js`
- Open [index.html](./index.html) to see the result!

## Live-Reload Editing
- Install vscode
- Install the [haxe extension](https://marketplace.visualstudio.com/items?itemName=nadako.vshaxe)
- Install the ["Trigger Task on Save" extension](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.triggertaskonsave)
- Open this folder in vscode
- After editing the haxe source code, the haxe code should be automatically compiled
- To start a web server that refreshes if when source code changes, run `npm start` in this directory