#!/usr/bin/env bash


main() {
	if [ $1 ]; then
		apt-get --yes install
		apt-get --yes upgrade

		echo "|Configuring $1 pack          |"
		if [ $1 = "zsh" ]; then
			zsh_pack
		elif [ $i = "java" ]; then
			java_pack
		elif [ $i = "perl" ]; then
			perl_pack
		elif [ $i = "python2" ]; then
			python2_pack
		elif [ $i = "python3" ]; then 
			python3_pack
		else
			echo "|No pack available for $i     |"
		fi
	fi
	exit 0		
}

zsh_pack() {
	sudo apt-get --yes install zsh fasd fd-find firewalld fzf git-extras httpie nmap ripgrep tig direnv
}

java_pack() {
	sudo apt-get --yes install default-jre
}

perl_pack() {
	sudo apt-get --yes install perl-doc
}

python2_pack() {
	sudo apt-get --yes install python pep8 python-pip python-pip-whl pylint pipenv virtualenv virtualenvwrapper
}

python3_pack() {
	sudo apt-get --yes install python3-pip  python3-pylint-django python3-pylint-flask python3-virtualenv python3-virtualenvwrapper
}

#---
echo "+-----------------------------+"
echo "|Starting configuration       |"
echo "+-----------------------------+"
main

echo "+-----------------------------+"
echo "|Configuration is finised     |"
echo "+-----------------------------+"
