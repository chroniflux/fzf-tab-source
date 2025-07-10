# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  'completions')
    docker "$word" --help 2>&1 | bat --language=help --plain
    ;;
  *)
    ;;
esac
