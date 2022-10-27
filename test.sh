#!/bin/sh
D=$(date)
echo inizio ${D}
D=$(date +"%Y%m%d-%H%M")
P=/in
#exiftool -json -all_tags -fast -n -q -j -w pictures-${D}.json -o /out $P
exiftool -json -fast -n -q -r \
 -ext jpg -ext jpeg -ext dng -ext cr2 -ext crw -ext raw -ext mp4 -ext thm -ext lrv \
 ${P} > /out/${dir}_pictures.${D}.json
date
