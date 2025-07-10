# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  *'command'*)
    docker "$word" --help 2>&1 | bat --language=help --plain
    ;;
  *)
    ;;
esac
