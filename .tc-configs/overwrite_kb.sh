# this script is designed to sudo cp the X11 'us' file and 'envdev.xml' files into place over the X11 ones.  it will also cp the dvorak-custom.map.gz into place
# then it will set the keys into the system

# ! this script should live at dotfiles/overwrite_kb.sh

# set s bit on this script, `sudo chmod +s overwrite_kb.sh`
#testdir="$HOME/dev/overwrite_kb/testoutput/"

# check if 'us' exists
us="Xkb/symbols/us"
if [[ -f $us ]]; then
	#cp $us $testdir
	cp $us /usr/share/X11/xkb/symbols/
	echo "us symbol copied in"
fi

envdev="Xkb/rules/envdev.xml"
if [[ -f $envdev ]]; then
	#cp $envdev $testdir
	cp $envdev /usr/share/X11/xkb/rules/
	echo "envdev.xml copied in"
fi

# the .map.gz gets fixed in the cp
dv="Xkb/dvorak-custom-map.gz"
if [[ -f $dv ]]; then
	#cp $dv "$testdir"dvorak-custom.map.gz
	cp $dv /usr/share/kbd/keymaps/i386/dvorak/dvorak-custom.map.gz
	echo "dv-custom copied in"
fi

# set the system
echo localectl set-keymap dvorak-custom
#echo "terminal set dv-custom\n"
echo setxkbmap -variant poop
#echo "x11 kb set\n"
echo xset r 66
#echo "capslock repeat set\n"
