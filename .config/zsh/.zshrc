autoload -Uz colors && colors

PS1="%B%{$fg[red]%}(%{$fg[yellow]%}%n%{$fg[green]%}:%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%})%{$reset_color%}$%b "

HISTSIZE=5000
SAVEHIST=5000
HISTFILE="$ZDOTDIR/.zsh-hist"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias zrc="$EDITOR /.config/zsh/.zshrc"
alias nf='neofetch'
alias clc='rm -rf ~/.cache'
alias zhist="$EDITOR ~/.config/zsh/.zsh-hist"
alias vdwm="cd ~/.local/src/dwm-6.3/ && $EDITOR config.def.h"
alias vst="cd ~/.local/src/st-0.8.5/ && $EDITOR config.def.h"
alias vdwl="cd ~/.local/src/dwmblocks/ && $EDITOR blocks.def.h"

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef
zle_highlight=('paste:none')

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

unsetopt BEEP

bindkey -v

autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[^?' backward-kill-word

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins 
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}
