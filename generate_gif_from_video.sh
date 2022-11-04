#!/bin/sh

palette="/tmp/palette.png"

time="$3"
if [ -z "$3" ]; then
    # default is 10 minutes
    time="00:10:00.00"
fi
echo "Duration: $time"

scale="$4"
if [ -z "$4" ]; then
    scale="480"
fi
echo "Scale: $scale p preserving aspect ratio"

filters="fps=20,scale=$scale:-1:flags=lanczos"
echo "Filters: $filters"

echo "Determining pallette..."
ffmpeg -v warning -i $1 -vf "$filters,palettegen=stats_mode=diff" -y $palette

echo "Video to gif..."
ffmpeg -i $1 -i $palette -lavfi "$filters,paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -t $time -y $2

# Example:
# save as gif.sh
# chmod +x gif.sh
# ./gif.sh isaacgymgrid_grid_4.mp4 isaac.gif 00:00:08.00 480
