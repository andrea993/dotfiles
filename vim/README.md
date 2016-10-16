#VIM CONFIGURATION
Copy the file `.vimrc` in your home
```
cp .vimrc $HOME
```
##PLUGIN INSTALL
To install Plugins you need `NeoBundle`. You can Install it by
```
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
Then start vim and write:
```
:NeoBundleInstall
```
At the end you need to restart vim to finish installation.

###YOUCOMPLETEME CONFIGURATION

This steps are to install all languages available completions, if you want to install only some language completion you need to read the `YouCompleteMe` documentation on its `GitHub`page.

*Make sure:
	*you are using python3.
	*you have `mono` package installed for `.net` completion.
	*you have the `clang` package installed.


Go in the directory `~/.vim/bundle/YouCompleteMe_fix-vim-eval-returning-py2-str` and run `./install.py --all`.

Restart vim, now you should use the completion.

####ENABLE CLANG COMPLETION
Copy the file `.ycm_extra_conf.py` in your home
```
cp .ycm_extra_conf.py $HOME
```

