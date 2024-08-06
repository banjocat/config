alias v=nvim
alias vi=nvim
alias vim=nvim
alias bashrc='source $HOME/.bashrc'
alias vbashrc='nvim $HOME/config/bashrc'
alias vkitty='nvim $HOME/config/kitty.conf'
alias gr='go run main.go'
alias web='python -m http.server'
alias games='cd $HOME/code/games'
alias code='cd $HOME/code'
alias per='cd $HOME/code/defold/perdita'
alias unreal='/home/banjocat/code/tools/UnrealEngine/Engine/Binaries/Linux/UnrealEditor'
alias unity='unityhub --no-sandbox'
alias defold='cd $HOME/code/defold'

alias eot='cd $HOME/code/games/eot'
alias boat='cd $HOME/code/defold/boatgame'
alias tools='cd $HOME/code/tools'
alias life='cd $HOME/code/life'


export PATH="$HOME/go/bin:$PATH:/usr/local/go/bin:$HOME/bin:/home/banjocat/.local/share/Steam/steamapps/common/Proton - Experimental/files/bin"

function gu {
    git add .
    git commit -m'update'
    git push
}

function del8bit {
    for i in *.wav; do
        D=$(soxi -D $i)
        if (( $(echo "$D > 1.0" |bc -l) )); then
            rm $i
        fi
    done
}


function to8bit {
    rm -rf 8bit
    mkdir 8bit
    for i in *.wav; do
        sox $i -r 16000 -c 1 -b 8 8bit/$i
    done
    pushd 8bit
    del8bit
    popd
}


# make ctrl+h backspace on gui
# gsettings set org.gnome.desktop.interface gtk-key-theme "Emacs"


# convert sound to 8 bit
# sox disturbence.wav -r 16000 -c 1 -b 16 disturbence_16000_mono_16bit.wav



