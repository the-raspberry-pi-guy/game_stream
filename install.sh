echo "The installation wizard will now install everything required for this tutorial!"
echo "This will take a long time (Around an hour and a quarter!)... Why don't you go and get a cuppa?!"
sleep 5
echo "And it begins!"

sudo apt-get update
wget https://cmake.org/files/v3.4/cmake-3.4.0-rc1.tar.gz
tar zxf cmake-3.4.0-rc1.tar.gz
cd cmake-3.4.0-rc1/
sudo ./bootstrap
sudo make
sudo make install
cd ..

sudo apt-get -y install libopus-dev libexpat1-dev libssl-dev libasound2-dev libudev-dev libavahi-client-dev libcurl4-openssl-dev libjs-jquery
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev-dev_1.4.4%2bdfsg-1_armhf.deb
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev-tools_1.4.4%2bdfsg-1_armhf.deb
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev2_1.4.4%2bdfsg-1_armhf.deb
sudo dpkg -i libevdev*
cd

mkdir game_stream
cd game_stream
wget https://github.com/irtimmer/moonlight-embedded/releases/download/v2.1.1/moonlight-embedded-2.1.1.tar.xz
tar xf moonlight-embedded-2.1.1.tar.xz -C /home/pi/game_stream/
cd moonlight-embedded-2.1.1/
mkdir build
cd build/
sudo cmake ../
sudo make
sudo make install
cd ~
sudo rm cmake-3.4.0-rc1.tar.gz libevdev2_1.4.4+dfsg-1_armhf.deb libevdev-tools_1.4.4+dfsg-1_armhf.deb libevdev-dev_1.4.4+dfsg-1_armhf.deb
cd game_stream

echo "*Tentative* And... We should be all done now!"
