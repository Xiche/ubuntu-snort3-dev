Snort++ build quick start (inside the container) with unit test support:
```
cd $HOME
curl -LO https://snort.org/downloads/snortplus/daq-2.2.2.tar.gz
tar xf daq-2.2.2.tar.gz
cd daq-2.2.2
./configure
make install
ldconfig

cd $HOME
git clone https://github.com/snortadmin/snort3.git
cd snort3
./configure\_cmake.sh --prefix=$HOME/install/snort3 --enable-unit-tests
cd build
make -j$(nproc) install
make check

$HOME/install/snort3/bin/snort -V
$HOME/install/snort3/bin/snort --catch-test all
```
