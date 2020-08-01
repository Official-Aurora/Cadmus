#!/bin/bash

exists=0

command -v ls $THEOS/lib/Cadmus.framework >/dev/null 2>&1 || exists=1

if [[ $exists != 1 ]]; then 
    rm -rf $THEOS/lib/Cadmus.framework
    echo "Removed old Cadmus files."
else
    echo "No need to remove files."
fi