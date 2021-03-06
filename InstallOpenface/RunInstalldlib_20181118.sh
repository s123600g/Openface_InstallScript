# !/bin/bash
PATH=/sbin:/bin:/usr/bin

#請注意是在家目錄底下建立src目錄，這裡的src/是存在家目錄 ~ 底下
echo "安裝Dlib套件."

mkdir -p ~/src
mv dlib-18.16.tar.bz2 ~/src
cd ~/src
tar xf dlib-18.16.tar.bz2 
cd dlib-18.16/python_examples 

mkdir build
cd build

wget -O boost_1_62_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_62_0.tar.gz/download 
tar -xvzf boost_1_62_0.tar.gz
cd boost_1_62_0/ 
sudo apt-get update 
sudo apt-get install -y build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev 

sudo ./bootstrap.sh --prefix=/usr/local
sudo ./b2 and eventually install it:
sudo ./b2 install


cd ~/src 
cd dlib-18.16/python_examples 
cd build
sudo cmake ../../tools/python 
sudo cmake --build . --config Release 
sudo cp dlib.so /usr/local/lib/python2.7/dist-packages

cd ~/OpenFaceInstallScript-20181118/InstallOpenface

