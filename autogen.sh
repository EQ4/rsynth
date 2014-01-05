#!/bin/bash

CONFIG_DIR=misc

ln -svf /usr/share/${CONFIG_DIR}/config.guess config.guess
ln -svf /usr/share/${CONFIG_DIR}/config.sub config.sub

mkdir -p m4

aclocal -I m4 || exit 1

autoheader || exit 1
autoconf || exit 1
