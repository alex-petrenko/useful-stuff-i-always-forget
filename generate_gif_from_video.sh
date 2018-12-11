#!/bin/sh

palette="/tmp/palette.png"

filters="fps=20,scale=240:-1:flags=lanczos"

time="$3"
if [ -z "$3" ]; then
    time="01:00:00"
fi
echo $time

ffmpeg -v warning -i $1 -vf "$filters,palettegen=stats_mode=diff" -y $palette

ffmpeg -i $1 -i $palette -lavfi "$filters,paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -t $time -y $2

# ffmpeg -i $1 -lavfi "$filters" -t 00:00:10.35 -y $2
