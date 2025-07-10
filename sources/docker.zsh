# :fzf-tab:complete:(\\|*/|)docker:

case $group in
  'completions')
    if [[ $CURRENT -eq 2 ]]; then
      docker "$word" --help 2>&1 | bat --language=help --plain
    fi
    ;;

  *)
    ;;
esac
