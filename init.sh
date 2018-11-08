git submodule update --init --recursive
cd pciutils
make ZLIB=no DNS=no
cd ..
mkdir build
cd build
cmake ..
cmake --build . --config Release
cd ..