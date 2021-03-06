#!/usr/bin/fish
set PATH $PATH ~/bin /home/andrearch/.gem/ruby/2.3.0/bin
set EDITOR vim
set SYSROOT ~/Android/ndkTC/sysroot
set CC "arm-linux-androidrabi-gcc --sysroot $SYSROOT"
set AR arm-linux-androideabi-ar

alias tmux "tmux -2"
alias vundle-update "env SHELL=(which sh) vim +BundleInstall! +BundleClean +qall"
alias sudob "sudo fish -c (history -n 1)"

function pythonversion 
	sudo ln -sf "/usr/bin/python$argv" "/usr/bin/python"
end

function startprinter
	sudo systemctl start avahi-daemon
	sudo systemctl start cups-browsed
end

function meteo
	curl http://wttr.in/$argv
end

function tra
	mv $arg ~/.local/share/Trash/files
end

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
        exec startx -- -keeptty
    end
end 
