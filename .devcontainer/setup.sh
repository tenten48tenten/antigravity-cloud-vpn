#!/usr/bin/env bash
set -e

sudo apt-get update
wget -q -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y /tmp/google-chrome.deb || sudo apt-get install -f -y
rm -f /tmp/google-chrome.deb

mkdir -p ~/Desktop
cat << 'EOF' > ~/Desktop/Chrome.desktop
[Desktop Entry]
Version=1.0
Name=Google Chrome
Exec=/usr/bin/google-chrome-stable --no-sandbox --disable-dev-shm-usage https://www.google.com
Terminal=false
Icon=google-chrome
Type=Application
Categories=Network;WebBrowser;
EOF
chmod +x ~/Desktop/Chrome.desktop
