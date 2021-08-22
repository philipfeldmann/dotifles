# Install node and zx to run scripts via javascript
pacman -Syu --noconfirm
pacman -S nodejs npm yarn --noconfirm
npm i -g zx

# Install oh-my-zsh
sh -c $(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)

# Install packer-nvim
git clone https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

chmod +x ./index.mjs
