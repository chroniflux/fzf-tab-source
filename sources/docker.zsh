# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  *'sub-command'|*'command')
    docker "$word" --help 2>&1 | bat --language=help --plain
    ;;
  *)
    ;;
esac
