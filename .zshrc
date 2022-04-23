# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

files=(
  ~/powerlevel10k/powerlevel10k.zsh-theme                                                     # Powerlevel10k: romkatv/powerlevel10k.git
  ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh                                  # Syntax: zsh-users/zsh-syntax-highlighting
  ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh                                          # Autosuggestions: zsh-users/zsh-autosuggestions
  ~/.zsh/z/z.sh                                                                               # rupa/z
  ~/.zsh/sudo.zsh                                                                             # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/sudo/sudo.plugin.zsh
  ~/dotfiles/.alias
  ~/.p10k.zsh
)

for file in $files
do
  source $file
done

autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots) #include hidden files

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#Add homestead function for issuing vagrant commands from anywhere
function homestead() {
    ( cd ~/Developer/Homestead && vagrant $* )
}


# PATH
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:$HOME/spark-installer
export INTELEPHENSE_LICENCE_KEY=""

# 😡 Initializes NVM, I hate this, adds up to 3 seconds to shell start up time
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# neofetch

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
