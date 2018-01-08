setup virtualenvwrapper
```
$ sudo apt-get install python-dev python-pip
$ sudo pip install virtualenvwrapper
```
envs will be in ~/.virtualenvs
```
$ source /usr/local/bin/virtualenvwrapper.sh
$ mkvirtualenv myenv
$ workon myenv
$ echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
```
associate env with project
```
$ mkdir -p ~/projects/myproj && cd ~/projects/myproj
$ setvirtualenvproject $VIRTUAL_ENV `pwd`
```
