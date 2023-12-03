# add a leading 0 to files that have
# a number this is for ordering
# purposes on mp3 players
rename -v 's/(\D)(\d)\./${1}0${2}./' *
