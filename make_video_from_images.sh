# ffmpeg -r 1/5 -i img%03d.png -c:v libx264 -vf fps=25 -pix_fmt yuv420p out.mp4

# ffmpeg -framerate 1 -pattern_type glob -i '*.png' \
#   -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

# $1: input files template
# $2: output filename
# $3: output framerate (?)
# $4: output fps

#ffmpeg -r 1/$3 -i $1 -c:v libx264 -vf fps=$4 -pix_fmt yuv420p $2

echo $1
echo $2
echo $3
echo $4

ffmpeg -framerate $3 -pattern_type glob -i "$1" \
  -c:v libx264 -r $4 -pix_fmt yuv420p $2
