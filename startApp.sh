sudo modprobe ftdi_sio
sleep 1

cd /home/pi/Application/DSPL-serial/

sudo chmod +x update.sh
sudo chmod +x ARM_xbox_serial
sudo chmod +x Controller_GUI
sudo chmod 777 settings.json

sudo chmod 777 /sys/bus/usb-serial/ftdi_sio/new_id
sudo echo "0856 bf02" > /sys/bus/usb-serial/ftdi_sio/new_id

sudo sh update.sh
./ARM_xbox_serial &
./Controller_GUI &
