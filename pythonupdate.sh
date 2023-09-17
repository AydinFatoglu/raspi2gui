curl -O https://www.python.org/ftp/python/3.10.13/Python-3.10.13.tgz && 
tar -zxvf Python-3.10.13.tgz && 
cd Python-3.10.13 && 
./configure --enable-optimizations && 
sudo make altinstall && 
cd /usr/bin && 
sudo rm python && 
sudo ln -s /usr/local/bin/python3.10 python
