cd $1    # cd to input folder
mkdir -p $2   # creaing output folder if it did not exist
find . -name "*$4" | xargs -i ffmpeg -i {} -vf scale=$3:-1 -qscale 0 $2/{}    # $2 -- absolute path to output dir (or path to output dir relative to input dir)
								   # $3 -- width of the resulting image
								 # $4 -- image extension 
