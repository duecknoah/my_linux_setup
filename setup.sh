# This scripts sets up everything that I use on any
# new linux installations
#
# Make SURE the following is true:
# 1.	apt-get is availble as your package manager 

# First update packages
sudo apt-get update

# Main packages
sudo apt-get install vim git python3 g++ gcc java samba mc tmux screen -y
# Optional packages
sudo apt-get install steamcmd -y

# Upgrade for any other packages we missed
sudo apt-get upgrade -y
sudo apt-get autoclean -y

# Color themes bundle download for VIM
mkdir ~/.vim
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

# Set TERM=xterm-256color by default
echo "Setting 256color for xterm and screen by default ..."
cat bashrc_data >> ~/.bashrc

# Set .vimrc settings
echo "Setting ~/.vimrc settings ..."
cat vimrc_data > ~/.vimrc

# Allow 256 colors to work under GNU screen
cat screenrc_data > ~/.screenrc

# Color test
echo "Running color test ..."
./256color.pl

echo "********************************************"
echo "Setup done!"
echo "********************************************"
echo "Restarting in 10 seconds ..."

sudo reboot 10

