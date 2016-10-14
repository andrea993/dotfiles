#VIM CONFIGURATION
Copy the file `.vimrc` in your home
```
cp .vimrc $HOME
```
##PLUGIN INSTALL
To install Plugins you need `Vundle`. You can Install it by
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Then start vim and write:
```
:PluginInstall
```
At the end you need to restart vim to finish installation.

###YOU COMPLETE ME CONFIGURATION
Make sure you are using python3

To use ycm you need to go in the directory `~/.vim/bundle/YouCompleteMe` and run `./install.py --all`.

Restart vim, now you should use the completion.

####YCM UNICODE CHARACTERS CAUSE ERRORS
After installing ycm in vim try `:setf git` if you get variuos errors you need to use an other branch of ycm.

TO FIX:
```
cd ~/.vim/bundle
rm -rf YouCompleteMe
git clone -b fix-vim-eval-returning-py2-str https://github.com/puremourning/YouCompleteMe.git 
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all
```

####ENABLE CLANG COMPLETION
Copy the file `.ycm_extra_conf.py` in your home
```
cp .ycm_extra_conf.py $HOME
```
Make sure you have the `clang` package installed

