# in case of wifi problems
alias airport-off='sudo /usr/sbin/networksetup -setairportpower en1 off'
alias airport-on='sudo /usr/sbin/networksetup -setairportpower en1 on'
function airport_restart {
  ariport-off
  airport-on
}

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias pdf='/Applications/Skim.app/Contents/MacOS/Skim'
alias resetcamera='sudo killall VDCAssistant'
