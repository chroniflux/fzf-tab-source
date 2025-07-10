# :fzf-tab:complete:(\\|*/|)pip(|3*):

case $group in
  *'command'*|'completions'|*'sub-command'*)
    echo "补全词(word): '$word', 补全组(group): '$group'" > /tmp/docker_debug.txt
    ;;

  *)

    ;;
esac
