sudo apt install -y vim aptitude curl
(cat vimrc-1.txt ; sleep 1) > ~/.vimrc

mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

cd ~/setup-sh/setup
(sh vim-dein.sh ; sleep 2) >> ~/.vimrc

sudo chown -R $(whoami) ~/.cache

(cat ~/.vimrc ; sleep 2) | sed -e "84a===call dein#add('tomasr/molokai')\n===call dein#add('Yggdroot/indentLine')\n===call dein#add('scrooloose/syntastic')\n===call dein#add('cohama/lexima.vim')\n===if has('lua')\n======call dein#add('Shougo/neocomplete.vim')\n======call dein#add('Shougo/neosnippet')\n======call dein#add('Shougo/neosnippet-snippets')\n===endif" | sed "s/===/  /" | (sed "s/===/  /" ; sleep 2) > ~/.vimrc

(cat vimrc-2.txt ; sleep 2) >> ~/.vimrc

sudo aptitude install -y vim-gnome