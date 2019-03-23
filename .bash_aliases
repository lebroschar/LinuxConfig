# Keep emacs windows 10 warnings off the screen
function emacs { /usr/bin/emacs "$1" > /dev/null 2>&1; }
export -f emacs

