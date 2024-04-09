#!/bin/bash

# Install zsh
sudo apt install zsh -y

# Show version
zsh --version

# Set zsh as default shell
chsh -s /usr/bin/zsh 


# Echo zsh. 
echo $SHELL

# Logout & Login if don't see zsh as default shell.
echo "Logout & Login if don't see zsh as default shell."

# Install oh-my-zsh. https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install curl
sudo apt-get install curl
# Install git
sudo apt-get install git
# Use agnoster theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster
# Edit ZSH_THEME
sed  -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Install powerline font
sudo apt-get install fonts-powerline -y

# Install powerlevel10k
sudo rm -R ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Edit zshrc and add powerlevel
sed  -i 's/ZSH_THEME="agnoster"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# autosuggesions plugin

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# zsh-syntax-highlighting plugin

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# zsh-fast-syntax-highlighting plugin

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# zsh-autocomplete plugin

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete




# Enable plugins
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g' ~/.zshrc


echo "Successfully Installed. Start new terminal and configure powerlevel10k."
echo "If p10k configuration wizard does not start automatically, run following"
echo "p10k configure"
echo "Thanks for using this script. It actually saves lot of time to install & configure zsh."