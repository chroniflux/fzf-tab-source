# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  *' sub-command'|*' command')
    docker "$word" --help 2>&1 | bat --language=help --plain
    ;;
  *)
    echo "补全词(word): '$word', 补全组(group): '$group'" > /tmp/docker_debug.txt
    ;;
esac
