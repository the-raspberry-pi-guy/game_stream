echo "The installation wizard will now install everything required for this tutorial!"
sleep 5
echo "And it begins!"

echo "deb http://archive.itimmer.nl/raspbian/moonlight $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list

sudo apt-get update
sudo apt-get --yes --force-yes install moonlight-embedded

git clone https://github.com/the-raspberry-pi-guy/game_stream
cd game_stream

echo "*Tentative* And... We should be all done now!"
