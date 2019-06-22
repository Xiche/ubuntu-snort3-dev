Snort++ build quick start (inside the container) with unit test support:
```
cd $HOME
git clone https://github.com/snort3/libdaq.git
cd libdaq
./bootstrap
./configure
make install
ldconfig

cd $HOME
git clone https://github.com/snort3/snort3.git
cd snort3
./configure\_cmake.sh --prefix=$HOME/install/snort3 --enable-unit-tests
cd build
make -j$(nproc) install
make -j$(nproc) check

$HOME/install/snort3/bin/snort -V
$HOME/install/snort3/bin/snort --catch-test all
```
