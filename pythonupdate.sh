sudo apt-get remove python3 -y && sudo apt-get remove python2.7 -y && 
curl -O https://www.python.org/ftp/python/3.10.13/Python-3.10.13.tgz && 
tar -zxvf Python-3.10.13.tgz && 
cd Python-3.10.13 && 
./configure --enable-optimizations && 
sudo make altinstall && 
cd /usr/bin && 
sudo rm python && 
sudo rm python3 && 
sudo rm python2.7 && 
sudo ln -s /usr/local/bin/python3.10 python
