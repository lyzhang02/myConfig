# missing _ctypes
sudo apt install libffi-dev
# missing sqlite
sudo apt install libsqlite3-dev

./configure --enable-optimazations --enable-shared
sudo make -j 8
sudo make altinstall
