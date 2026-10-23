#!/usr/bin/env bash
export DISPLAY=:1
nohup google-chrome-stable --no-sandbox --disable-dev-shm-usage --start-maximized https://www.google.com >/dev/null 2>&1 &
