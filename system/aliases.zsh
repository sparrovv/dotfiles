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
alias :q='exit'
alias gen_rand_password='openssl rand -base64 6'
alias ep="gotr --from en --to pl"
alias pe="gotr --from pl --to en"

man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
