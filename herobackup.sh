#HeroBackup: Back up GoPro videos and photos to a hard drive using a raspberry pi.
if [ -f/sys/class/gpio/export ];
then
  if [ -f/media/$USER/8765-4321/MISC/version.txt ];
  then
  echo "1">/sys/class/gpio/gpio21/value;
  sleep 1;
  echo "0">/sys/class/gpio/gpio21/value;
  sleep 1;
  echo "1">/sys/class/gpio/gpio21/value;
  sleep 1;
  echo "0">/sys/class/gpio/gpio21/value;
  sleep 1;
  echo "1">/sys/class/gpio/gpio21/value;
  sleep 1;
  echo "0">/sys/class/gpio/gpio21/value;
  sleep 6;
  mkdir /media/$USER/[HDID]/'date+D:M:Y';
  echo "1">/sys/class/gpio/gpio21/value
  mv /media/$USER/8765-4321/DCIM/*GOPRO /media/$USER/[HDID]/'date+D:M:Y';
  echo "0">/sys/class/gpio/gpio21/value
  else
  while true;
  echo "1">/sys/class/gpio/gpio21/value
  sleep 2;
  echo "0">/sys/class/gpio/gpio21/value
  sleep 2;
  fi;
else
echo "21">/sys/class/gpio/export;
echo "out">/sys/class/gpio/gpio21/direction;
fi;
