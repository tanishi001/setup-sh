sudo apt install -y vim aptitude curl
cat vimrc-1.txt > ~/.vimrc

mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

cd ~/setup-sh
sh vim-dein.sh >> ~/.vimrc

cat ~/.vimrc | sed -e "84a===call dein#add('tomasr/molokai')\n===call dein#add('Yggdroot/indentLine')\n===call dein#add('scrooloose/syntastic')\n===call dein#add('cohama/lexima.vim')\n===if has('lua')\n======call dein#add('Shougo/neocomplete.vim')\n======call dein#add('Shougo/neosnippet')\n======call dein#add('Shougo/neosnippet-snippets')\n===endif" | sed "s/===/  /" | sed "s/===/  /" > ~/.vimrc

cat vimrc-2.txt >> ~/.vimrc

sudo aptitude install -y vim-gnome