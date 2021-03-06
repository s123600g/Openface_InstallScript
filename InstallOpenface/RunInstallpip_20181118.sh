#!/bin/bash
PATH=/sbin:/bin:/usr/bin

echo "安裝Python pip套件與前置需求套件."
 
sudo apt-get install -y  build-essential curl gfortran git libatlas-dev libavcodec-dev libavformat-dev libboost-all-dev libgtk2.0-dev libjpeg-dev liblapack-dev libswscale-dev pkg-config python-dev python-pip wget zip


sudo apt-get install -y libopencv-dev python-opencv

sudo pip install -U numpy
sudo pip install cython 
sudo pip install -U scipy 
sudo pip install scikit-learn==0.18 #限定0.18版本
sudo pip install scikit-image 
sudo pip install pandas
sudo pip install nolearn # for use nolearn.DBN

pip list
