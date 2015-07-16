echo "The installation wizard will now install everything required for this tutorial!"
echo "This will take a long time... Why don't you go and get a cuppa?!"

sudo apt-get update
wget http://www.cmake.org/files/v3.3/cmake-3.3.0-rc2.tar.gz
tar zxf cmake-3.3.0-rc2.tar.gz
cd cmake-3.3.0-rc2/
sudo ./bootstrap
sudo make
sudo make install
cd ..

sudo apt-get -y install libopus-dev libexpat1-dev libssl-dev libasound2-dev libudev-dev libavahi-client-dev libcurl4-openssl-dev libjs-jquery
wget https://github.com/the-raspberry-pi-guy/game_stream/raw/master/Dependencies/libevdev-dev_1.4.3%2Bdfsg-1_armhf.deb
wget https://github.com/the-raspberry-pi-guy/game_stream/raw/master/Dependencies/libevdev-tools_1.4.3%2Bdfsg-1_armhf.deb
wget https://github.com/the-raspberry-pi-guy/game_stream/raw/master/Dependencies/libevdev2_1.4.3%2Bdfsg-1_armhf.deb
sudo dpkg -i libevdev*
cd

git clone https://github.com/the-raspberry-pi-guy/game_stream
cd game_stream/Moonlight
tar xf moonlight-embedded-2.0.2.tar.xz -C /home/pi/game_stream/
cd ..
sudo rm -r Moonlight
cd moonlight-embedded-2.0.2/
mkdir build
cd build/
sudo cmake ../
sudo make
sudo make install
cd ~

echo "*Tentative* And... We should be all done now!"
