#!/bin/bash

./wham P -1 181 61 0.01 300 0 meta.dat result.dat
cat result.dat | awk '{print$1,$2}' > pmf.dat
