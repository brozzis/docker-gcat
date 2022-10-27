D=$(date +"%Y%m%d-%H%M")
P=in
# exiftool -json -all_tags -fast -n -q -j -w pictures-${D}.json  $P
exiftool -json -fast -q  in > out/pippo.${D}
