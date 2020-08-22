#! /bin/bash
# minqlx.sh - quake live minqlx auto-installation script

echo "Adding external python3.5 PPA repo"
sudo add-apt-repository ppa:fkrull/deadsnakes
echo "Updating 'apt-get'..."
sudo apt-get -y update
echo "Installing system updates..."
sudo apt-get -y upgrade
echo "Installing python and Redis server..."
sudo apt-get -y install python3.5 python3.5-dev redis-server
echo "Downloading minqlx..."
cd /home/qlserver/steamcmd/steamapps/common/qlds
wget https://github.com/MinoMino/minqlx/releases/download/v0.5.2/minqlx_v0.5.2.tar.gz
tar xvzf ./minqlx_v0.5.2.tar.gz
echo "Downloading minqlx-plugins..."
git clone https://github.com/MinoMino/minqlx-plugins.git
echo "Installing pip..."
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py
rm get-pip.py
echo "Installing build-essential..."
sudo apt-get -y install build-essential
echo "Installing pyzmq and hiredis..."
sudo python3.5 -m easy_install pyzmq hiredis
echo "Installing minqlx requirements..."
sudo python3.5 -m pip install -r minqlx-plugins/requirements.txt
echo "Done."
exit
