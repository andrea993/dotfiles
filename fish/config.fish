set PATH $PATH ~/bin /home/andrearch/.gem/ruby/2.3.0/bin
set EDITOR vim
set SYSROOT ~/Android/ndkTC/sysroot
set CC "arm-linux-androidrabi-gcc --sysroot $SYSROOT"
set AR arm-linux-androideabi-ar


alias vundle-update "env SHELL=(which sh) vim +BundleInstall! +BundleClean +qall"

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

