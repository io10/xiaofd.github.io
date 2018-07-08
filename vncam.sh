#!/bin/bash
apt-get update && apt-get install -y sudo
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get update
sudo apt-get install -y wget xorg lxde-core tightvncserver flashplugin-installer

mkdir -p ~/.vnc
wget xiaofd.github.io/others/passwd -P ~/.vnc/
chmod 0400 ~/.vnc/passwd
wget xiaofd.github.io/others/xstartup -P ~/.vnc/
chmod +x ~/.vnc/xstartup

sudo apt-get install -y firefox

export USER=~
rm -rf /tmp/.X1*-*
tightvncserver :1

export DISPLAY=localhost:1
# firefox&
# sleep 5
# pkill firefox

# cd ~/.mozilla/firefox/*.default/
# mkdir -p extensions
# wget -O extensions/alx-ffdeveloper@amazon.com.xpi https://s3.amazonaws.com/com.alexa.toolbar/autoupdate/alxf/alxf-4.0.0.xpi
# echo 'user_pref("browser.startup.homepage", "www.baidu.com");' >> prefs.js

mkdir -p ~/.alexa && cd ~/.alexa
wget https://transfer.sh/oUYEs/alexa.tar.gz && tar zxvf alexa.tar.gz
#wget xiaofd.github.io/others/alexa.tar.gz && tar zxvf alexa.tar.gz
firefox --profile ~/.alexa/alexa --new-tab 'https://www.alexamaster.net/Master/67977' &

echo 'finished'
