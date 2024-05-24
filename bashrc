alias v=nvim
alias vi=nvim
alias vim=nvim
alias bashrc='source $HOME/.bashrc'
alias vbashrc='nvim $HOME/config/bashrc'
alias vkitty='nvim $HOME/config/kitty.conf'
alias gr='go run main.go'

alias eot='cd $HOME/code/games/eot'


export PATH="$HOME/go/bin:$PATH:/usr/local/go/bin"

function gu {
    git add .
    git commit -m'update'
    git push
}

