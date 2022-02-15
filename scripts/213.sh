#!/bin/bash

number=$1
hw="homework$number"
cd ~/Coding/213/$hw/
nvim --cmd "let mode='latex'" ./$hw.tex
