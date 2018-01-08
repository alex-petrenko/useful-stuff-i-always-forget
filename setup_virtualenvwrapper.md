# setup virtualenvwrapper
$ sudo apt-get install python-dev python-pip
$ sudo pip install virtualenvwrapper

# envs will be in ~/.virtualenvs
$ source /usr/local/bin/virtualenvwrapper.sh
$ mkvirtualenv spitomin
$ workon spitomin
$ echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# associate env with project
$ mkdir -p ~/projects/spitomin && cd ~/projects/spitomin
$ setvirtualenvproject $VIRTUAL_ENV `pwd`
