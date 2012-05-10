# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias f='find . -iname'

alias ducks='du -cksh * | sort -rn|head -11' # Lists the size of all the folders and files
alias tu='top -o cpu'
alias pscpu="ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

alias systail='tail -f /var/log/system.log'

alias v='vim'
