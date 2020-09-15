# ffmpeg -i input.avi -vf scale="720:-1" output.avi

ffmpeg -i $1 -vf scale="$3:-1"  -qscale 0 -crf 0 $2
