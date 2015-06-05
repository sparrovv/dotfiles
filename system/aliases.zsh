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

# tar -cvzf tarballname.tar.gz itemtocompress
alias targz='tar -cvzf'

#tar -zxvf dump.tar.gz
alias untar='tar -zxvf'

alias ducks='du -cksh * | sort -rn|head -11' # Lists the size of all the folders and files
alias tu='top -o cpu'
alias pscpu="ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

alias systail='tail -f /var/log/system.log'

alias v='vim'
alias :q='exit'
alias gen_rand_password='openssl rand -base64 6'
alias resetdns='sudo killall -HUP mDNSResponder'

alias ep="gotr en pl"
alias pe="gotr pl en"
alias gees="gotr en en -s"
alias egi="env | grep -i"
alias gen_ssl_key="ssh-keygen -t rsa -C" #provide an email

# open google with the phrase
goo() { open "https://www.google.co.uk/#q=$@" }

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
