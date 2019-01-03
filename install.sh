
#install walllet ubuntu 18.04

sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
echo "deb http://archive.ubuntu.com/ubuntu/ xenial main universe" | sudo tee -a /etc/apt/sources.list
sudo add-apt-repository  -y  ppa:bitcoin/bitcoin
sudo apt update

sudo apt install -y nano htop git curl wget unzip gksu
sudo apt install -y software-properties-common
sudo apt install -y libzmq3-dev
sudo apt install -y build-essential libtool autotools-dev pkg-config libssl-dev
sudo apt install -y libboost1.58-dev libboost-system1.58 libboost-filesystem1.58 libboost-program-options1.58 libboost-thread1.58 libboost-thread1.58
sudo apt update && sudo apt install -y libqt5network5 libqt5widgets5
sudo apt install -y libqrencode3 libprotobuf9v5 libminiupnpc10 libevent-pthreads-2.0-5 libevent-2.0-5 libprotobuf9v5
sudo apt install -y libdb4.8-dev libdb4.8++-dev


cd ~/paxex

wget https://github.com/paxex/Paxex/releases/download/2.0.0/paxex-2.0.0-x86_64-linux-QT.tar.gz

tar -xzf paxex-2.0.0-x86_64-linux-QT.tar.gz

rm paxex-2.0.0-x86_64-linux-QT.tar.gz

wget -P ~/paxex https://paxexcoin.com/assets-web/img/logo.png


chmod +x paxchange*
cat > $HOME/.local/share/applications/paxex.desktop <<DELIM
[Desktop Entry]
Encoding=UTF-8
Name=PAXEX-WALLET
Comment=crypo
Exec = $HOME/paxex/paxchange-qt
Icon = $HOME/paxex/logo.png
Categories=Application;CRYPTO;WALLET
Version=1.0
Type=Application
Terminal=0
DELIM

cd ~
~/paxex/paxchange-qt

