# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  'completions')
    ${words[1, CURRENT-1]} "$word" --help 2>&1 | bat --language=help --plain
    ;;

  *)
    ;;
esac
