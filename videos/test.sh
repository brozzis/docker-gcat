#!/bin/sh
# specfic for videos
D=$(date)
echo inizio ${D}
D=$(date +"%Y%m%d-%H%M")
P=/in
#exiftool -json -all_tags -fast -n -q -j -w pictures-${D}.json -o /out $P
exiftool -json -fast -n -q -r \
-ext mkv -ext mp4 -ext avi -ext m4v -ext mpg -ext ogg -ext rmvb -ext vob -ext webm -ext wmv \
${P} > /out/${dir}_videos.${D}.json
date
