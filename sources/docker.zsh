# :fzf-tab:complete:(\\|*/|)docker:
#
# This script provides previews for Docker subcommands. It uses a robust 'case'
# statement to handle Zsh's completion groups correctly.

# The `$group` variable holds the description of the completion candidates.
# We check if the group name contains 'sub-command' or 'command', which is
# common for command-line tools.
case $group in
  *'sub-command'|*'command'|*)
    # The command to generate the preview.
    # We use `docker "$word" --help` to get the help text for the selected subcommand.
    # `2>&1` is crucial: It redirects standard error to standard output. Docker
    # sometimes prints help text to stderr, and without this, the pipe '|' would
    # not capture it, resulting in a blank preview.
    docker "$word" --help 2>&1 | bat --language=help --plain
    ;;
esac
