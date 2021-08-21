prompt() {
    PS1="$(powerline-rs --shell zsh $?)"
}
precmd_functions+=(prompt)

# oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh

plugins=(git zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh
