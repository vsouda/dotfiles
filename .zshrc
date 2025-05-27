source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(pyenv init --path)"

auto_source_python_env() {
    if [[ -f ".venv/bin/activate" ]]; then
        read "answer?Activate Python environment found in .venv/ [Y/n]? "
        answer=${answer:-Y}  # Default to Y if no answer is given
        if [[ $answer =~ ^[Yy] ]]; then
            source .venv/bin/activate
            echo "Python environment activated."
        fi
    fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd auto_source_python_env

if [[ -f ~/env.list ]]; then
    while IFS= read -r line; do
        if [[ $line =~ ^[[:space:]]*# ]] || [[ -z $line ]]; then
            continue
        fi
        key=${line%%=*}
        value=${line#*=}
        export "$key=$value"
    done < ~/env.list
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
