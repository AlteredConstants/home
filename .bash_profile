#!/bin/bash
pushd "$HOME" >/dev/null

# Have to add the scripts to the path before using them.
export PATH="$HOME/scripts:$PATH"

alias jspm='run-lib npm-run jspm'

# Ignore duplicate history items.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'

GIT_PROMPT_THEME=Solarized
source .bash-git-prompt/gitprompt.sh

test -f .bash_profile_local && source .bash_profile_local

case "$(run-lib get-platform)" in
	mac)
		test -f .bash_profile_mac && source .bash_profile_mac
		;;
	windows)
		test -f .bash_profile_windows && source .bash_profile_windows
		;;
	linux)
		test -f .bash_profile_linux && source .bash_profile_linux
		;;
esac

popd >/dev/null

