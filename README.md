# Raspberry Cam

The aim of this project is to give instructions how to build up your own [Raspberry Pi](https://www.raspberrypi.org/) web camera. It is assumed that you have a computer, a Raspberry Pi with camera, an SD card and a connection to internet available. Also, you should have a [Google Cloud Platform](https://cloud.google.com/) account.



Roughly the steps are the following (below we will go through each step in more detail):

1. Download the operating system Raspbian to the SD card.
2. Connect your computer to Raspberry Pi via SSH and enable the camera.
3. Create a new project in your Google Cloud account.
4. Resources and adding them to your GC bucket.


### Now, let's get started!

1. Download Raspbian to your computer from [downloads section](https://www.raspberrypi.org/downloads/) of Raspberry Pi main page. Insert the SD card to your computer and use the [Pi Filler](http://ivanx.com/raspberrypi/) program to set up Raspbian to the SD card. Insert the SD card to the Raspberry Pi.

2. Connect your computer with Raspberry Pi through SSH connection. This is done by giving a command
```
ssh pi@raspberrypi.local
```
in the terminal/bash. It may well be that at the first time the SSH can not find your Raspberry Pi by the name raspberrypi.local. If this is the case, you'll have to find RP's IP address by giving the command
```
ping raspberrypi.local
```
Now you should see RP's IP address, so typing
```
ssh pi@<IP>
```
will get you an access to RP - the default password is just *raspberry*. By command
```
sudo raspi-config
```
you will get the Raspberry Pi Software Configuration Tool. There you should
 1. change the default password to your own,
 2. enable the camera.

 ```
 sudo apt-get install rpi-update ???
 sudo apt-get rpi-update ???
 sudo reboot pi ???```

3. Create a new project in your Google Cloud account and a bucket therein (of the names of your choice).

4. You can copy the files index.html and webcam.sh from..


```
chmod +x webcam.sh
./webcam.sh
```

**KEYWORDS:**

*Raspbian* - operating system for all versions of Raspberry Pi.

*SSH* - Secure Shell, a protocol for secured connection

`some code here`

```
many lines of code here
```
