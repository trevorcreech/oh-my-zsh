function current_rvm() {
	output=$(~/.rvm/bin/rvm-prompt v g 2> /dev/null)
	if [[ -n "$output" ]] then
		echo "$output%{$reset_color$fg[gray]%}:"
	fi
}

PROMPT='%{$reset_color$fg[cyan]%}$(current_rvm)%{$reset_color$fg[gray]%}%~%{$reset_color$fg[green]%}/%{$reset_color$fg[green]%}$(git_prompt_info)>%{$reset_color%} ' 

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
