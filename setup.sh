#!/bin/bash

cd files

for f in *; do
    ln -sb $f ~/.$f
done
