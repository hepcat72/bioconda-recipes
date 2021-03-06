#!/usr/bin/env bash

python3 setup.py install --single-version-externally-managed --record=record.txt

mkdir -p $PREFIX/bin

chmod u+x $SP_DIR/biobb_pmx/pmx/mutate.py
cp $SP_DIR/biobb_pmx/pmx/mutate.py $PREFIX/bin/mutate

chmod u+x $SP_DIR/biobb_pmx/pmx/analyse.py
cp $SP_DIR/biobb_pmx/pmx/analyse.py $PREFIX/bin/analyse

chmod u+x $SP_DIR/biobb_pmx/pmx/gentop.py
cp $SP_DIR/biobb_pmx/pmx/gentop.py $PREFIX/bin/gentop
