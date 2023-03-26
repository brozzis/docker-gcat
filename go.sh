
IN=${1:=/Users/ste/Pictures/torrechiara_drone/}
OUT=${2:=/Users/ste/prog/docker-gcat/test/out}

[ -d ${IN} ] || exit
[ -d ${OUT} ] || exit

podman run \
	-v ${OUT}:/out/:rw \
	-v ${IN}:/in:ro \
	brozzis/prova:latest
