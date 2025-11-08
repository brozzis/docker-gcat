#!/bin/sh
D=$(date)
echo inizio ${D}
D=$(date +"%Y%m%d-%H%M")
P=/in
#exiftool -json -all_tags -fast -n -q -j -w pictures-${D}.json -o /out $P
exiftool -json -fast -n -q -r \
 -ext pptx \
 -ext docx \
 -ext md \
 -ext ppt \
 -ext PDF \
 -ext djvu \
 -ext azw3 \
 -ext TXT \
 -ext xib \
 -ext rtf \
 -ext pch \
 -ext doc \
 -ext rar \
 -ext pbxproj \
 -ext pbxuser \
 -ext nib \
 -ext txt \
 -ext chm \
 -ext epub \
 -ext opf \
 -ext mobi \
 -ext pdf \
 ${P} > /out/${dir}_docs.${D}.json
date
