
cd /home/pi/Application/DSPL-serial/

sudo chmod +x update.sh
sudo chmod +x ARM_xbox_serial
sudo chmod +x Controller_GUI
sudo chmod +rw settings.json

sudo sh update.sh
./ARM_xbox_serial &
./Controller_GUI &
