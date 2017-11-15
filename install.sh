#!/bin/bash
read -p 'ScreenShottr Username (Or Blank): ' Username
read -p 'ScreenShottr Token (Or Blank): ' Token

mkdir -p ~/Library/Application\ Support/com.screenshottr.screenshottr/screenshots
echo $Username > ~/Library/Application\ Support/com.screenshottr.screenshottr/username
echo $Token > ~/Library/Application\ Support/com.screenshottr.screenshottr/token


defaults write com.apple.screencapture location ~/Library/Application\ Support/com.screenshottr.screenshottr/screenshots
killall SystemUIServer

open ScreenShottr\ Service.workflow
