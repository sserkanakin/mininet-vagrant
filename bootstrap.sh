#!/bin/bash

QTR=21wi
MININET_VERSION="2.3.1b1"
POX_VERSION=fangtooth

sudo apt-get update
sudo apt-get install -y python2 python-is-python2 unzip net-tools
git clone https://github.com/mininet/mininet
(cd mininet && git checkout $MININET_VERSION)
sed -i 's/cgroup-bin/cgroup-tools/g' mininet/util/install.sh
sudo PYTHON=python2 mininet/util/install.sh -nfvp
(cd pox && sudo git checkout $POX_VERSION)
git clone https://github.com/sserkanakin/pearls_mininet.git
mv ~/pearls_mininet/pearls_mininet.zip ~/
unzip pearls_mininet.zip
sudo ln -s ~/pearls_mininet/pox/* ~/pox/pox/misc/
