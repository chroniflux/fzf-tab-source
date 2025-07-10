# :fzf-tab:complete:(\\|*/|)pip(|3*):

case $group in
  *'command'*|'completions'|*'sub-command'*)
    ${words[1, CURRENT-1]} "$word" --help 2>&1 | bat --language=help --plain
    ;;

  *)
    echo "补全词(word): '$word', 补全组(group): '$group'" > /tmp/docker_debug.txt
    ;;
esac
