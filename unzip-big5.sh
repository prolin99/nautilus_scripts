#!/bin/bash
#created by Thomas - tlinux.tsai at gmail dot com
file="$1"
zip_path=`echo $file | sed 's/.zip//gi'`

#LANG=zh_TW.Big5 7z   e $file  -o$zip_path
LANG=C 7z x $file -o$zip_path
convmv --notest  -r -f big5 -t utf8 $zip_path/*
