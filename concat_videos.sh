# Pass a path to a file with videos to be concatenated as $1. 
# The file with videos to be concatenated must have the following content:
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180215.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180326.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180339.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180436.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180549.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180636.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180753.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_180910.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_181119.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_181258.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_181408.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_181518.mp4
#    file ../Gerel_18_10_2018_galaxy_note_chosen/20191018_181615.mp4
#

ffmpeg -f concat -safe 0 -i $1 -c copy output.mp4
