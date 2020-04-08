#!/usr/bin/env bash
HERE=$(dirname "$0")

. $HERE/../shared/setup.sh $HERE
TARGET_DIR="$HERE/lib/oboe"
if [[ ! -e "$TARGET_DIR" ]]; then
    git clone https://github.com/udellgroup/oboe.git $TARGET_DIR
fi
#PIP install --no-cache-dir -e $TARGET_DIR
#PIP install --no-cache-dir -r $HERE/requirements.txt
cat $HERE/requirements.txt | sed '/^$/d' | while read -r i; do PIP install "$i"; done
