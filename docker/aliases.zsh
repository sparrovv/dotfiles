function docker_rm_exited {
  "docker rm `docker ps -a  | grep Exit | awk '{ print $1 }'`"
}
