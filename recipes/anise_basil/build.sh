#!/bin/bash

#Put the submodules (lemon & seqan) in ext
cd ext
rmdir */
mv ../lemon lemon
mv ../seqan seqan

cd ../build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DBOOST_ROOT=$PREFIX -DBoost_NO_SYSTEM_PATHS=ON -DBoost_DEBUG=ON ..
make -j 4 anise basil

cp bin/anise bin/basil ../scripts/filter_basil.py $PREFIX/bin/
