#!/bin/bash

BIN=$PREFIX/bin
mkdir -p $BIN

if [[ $target_platform == osx-64 ]]; then
  make CC=gcc CPP=g++
else
  sed -i.bak 's/CPPFLAGS = /CPPFLAGS = $(CXXFLAGS) /' Makefile
  make CPP=$CXX
fi

cp samblaster $BIN
