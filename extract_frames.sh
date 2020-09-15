# ffmpeg -i video.webm -vf fps=1 thumb%04d.jpg -hide_banner

# if folder with output frames does not exist, it must be explicitly created

ffmpeg -i $1 -vf fps=$3 $2 -hide_banner
