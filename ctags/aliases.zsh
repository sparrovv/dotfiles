alias ctags="`brew --prefix`/bin/ctags"
# --tag-relative is important option
alias ctagsme="ctags --exclude=vendor --exclude=.git --exclude=log -R -f ./.git/tags --tag-relative=yes ."
