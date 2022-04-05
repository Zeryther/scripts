# Source: https://superuser.com/a/556031
#
# This Bash script helps you convert an mp4 video into an animated gif.
# The file names "input.mp4" and "output.gif" should be self-explanatory.
# You can change them if necessary.
ffmpeg -i input.mp4 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif
