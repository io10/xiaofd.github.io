#!/bin/bash
# refer https://docs.microsoft.com/zh-hk/cli/azure/install-azure-cli?view=azure-cli-latest#install-on-debianubuntu-with-apt-get
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
     sudo tee /etc/apt/sources.list.d/azure-cli.list

sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install azure-cli
