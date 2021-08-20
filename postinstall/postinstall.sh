# Install node and zx to run scripts via javascript

snap install node --channel=16/stable
npm i
npm i -g zx
sh -c \"$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\"
chmod +x ./index.mjs
