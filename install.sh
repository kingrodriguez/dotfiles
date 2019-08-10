#rank mirrors
sudo pacman-mirrors -g
sudo pacman -Syy

#software changes
sudo install_pulse
sudo pacman -R palemoon-bin
sudo pacman -S firefox rofi python-colour python-netifaces gtk-chtheme xorg-xwininfo

#git stuff
git config --global user.email "16023711+kingrodriguez@users.noreply.github.com:"
echo ".dotfiles" >> ~/.gitignore
git clone --bare https://github.com/kingrodriguez/dotfiles $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
config checkout
config config --local status.showUntrackedFiles no

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#powerlevel theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#screenshot directory
mkdir ~/Pictures/screenshots
