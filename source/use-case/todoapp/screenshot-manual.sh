#!/usr/bin/env bash

declare projectDir=$(git rev-parse --show-toplevel);
declare currentDir=$(pwd)
declare screenshotDevTools="${projectDir}/tools/applescript/lib/src/screenshot-dev-tools.js";
declare screenshot="${projectDir}/tools/applescript/lib/src/screenshot.js";
declare launchFirefox="${projectDir}/tools/applescript/lib/src/launch-firefox.js";
declare screenshotOnly="${projectDir}/tools/applescript/lib/src/screenshot-only.js";
# マニュアル操作が必要なもの
# formの内容をコンソールに表示するスクショ
mkdir -p "${currentDir}/event-driven/img/"
node "${launchFirefox}" --url "http://localhost:8080/event-driven/prevent-event/"
echo "入力欄に入力してEnterを押す"
sleep 5
node "${screenshotOnly}" --output  "${currentDir}/event-driven/img/event-driven.png"
