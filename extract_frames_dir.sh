video_dir=$1    # simplest input: '.'
fps=$2    		# a number
img_format=$3   # png, jpg or others

for name in $video_dir/*.mp4
do
	out_dir=${name%.*}_${fps}_fps    # name without extension
	mkdir -p $out_dir
	# echo "ffmpeg -i $name -vf fps=$fps $out_dir/%04d.$img_format -hide_banner"
	ffmpeg -i $name -vf fps=$fps $out_dir/%04d.$img_format -hide_banner
done