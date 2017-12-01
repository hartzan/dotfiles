#
# ~/.profile
#
#

#[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.extend.profile ]] && . ~/.extend.profile

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# Add this to your .xinitrc or whatever file starts programs on startup.
"wal -i "$(< "${HOME}/.cache/wal/wal")"
