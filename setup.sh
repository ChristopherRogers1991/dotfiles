#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  BASE_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
BASE_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
FILES_DIR="$BASE_DIR/files"

cd $FILES_DIR

for f in *; do
    mv ~/.$f ~/.$f.back
    ln -sb $FILES_DIR/$f ~/.$f
done
