# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() { 
  if [ $# -eq 0 ]; then
    /Users/michalwrobel/todos/todo.sh ls
  else
    /Users/michalwrobel/todos/todo.sh $*
  fi
}

alias n="t ls +next"
