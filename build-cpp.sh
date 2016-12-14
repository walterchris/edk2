#!/bin/bash

cd BaseTools/Source/C; make

cd ../../..

./build-cpp-byt.sh
./build-cpp-hswbdw-book.sh
./build-cpp-hswbdw-box.sh
./build-cpp-ivb-book.sh
./build-cpp-link.sh
./build-cpp-skl.sh
./build-cpp-snb-book.sh
./build-cpp-snb-box.sh

exit 0
