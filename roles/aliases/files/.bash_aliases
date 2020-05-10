############################################################
# In case of a fresh installation, follow these steps:     #
# to create new alias: 'sudo gedit ~/.bash_aliases'        #
# to update bash: 'source ~/.bashrc'                       #
############################################################

### Text Editors ###
alias g='gedit'
alias sg='sudo gedit'
alias a='atom'
alias s='subl'
alias br='brackets'

### creating and editing aliases ###
alias na='subl ~/.bash_aliases'
alias ub='source ~/.bashrc'
alias uz='source ~/.zshrc'
alias ezsh='subl ~/.zshrc'

### Terminal utils ###
alias clc='clear'

### apt-get ###
alias ag='apt-get'
alias sag='sudo apt-get'

### package install / remove ###
alias install='sag install -y'
alias remove='sag remove'
alias autoremove='sudo apt autoremove'

### update & upgrade ###
alias update='sag update'
alias upgrade='sag upgrade -y'
alias updg='update && upgrade'

### directory utils ###
alias rmdir='rm -rf'
alias la='ls -a'
alias ls='ls --color=auto'
alias ll='ls -la'
alias path='echo -e ${PATH//:/\\n}'

### commuting between directories ###
# just input the number of times you need to go back
piche () {
	COUNTER=$1
	while [[ $COUNTER -gt 0 ]]
	do
	UP="${UP}../"
	COUNTER=$(( $COUNTER -1 ))
	done
	echo "cd $UP"
	cd $UP
	UP=""
}

chalo () { mkdir -p "$@" && cd "$@"; }
alias cd..='cd ..'

### programming languages ###
alias p='python'
alias g++='g++ --std=c++0x'

### create default files for different programming languages ###
alias mcpp='s main.cpp'
alias mjv='s Main.java'
alias mpy='s main.py'
alias mc='s main.c'

### compile and run ###
gocpp () { g++ '$@' && ./a.out; }
goc () { gcc '$@' && ./a.out; }
# gojava () { javac '$@' && ./a.out; }
# TODO write a function or something for java

### git ###
alias gac='git add -A && git commit -m'
alias gcm='git commit -m'
alias gp='git push'
alias gpo='git push origin'
alias gpl='git pull'

gev () { gac "$@" && gp; }

alias gs='git status -u'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout --'
alias grh='git reset --hard'
alias grb='git rebase'
alias gpoh='git push origin HEAD'
alias gploh='git pull origin HEAD'
alias grs='git reset'
alias gd='git diff'
# diff between develop and current branch
alias gddh='git diff develop HEAD'
alias gst='git stash'
# deletes all branches except `develop`
alias gitcleanup='git branch | grep -v "develop" | xargs git branch -D'

### important folders ###
alias cdgh='chalo ~/Desktop/github_repos/'

### virtualenv ###
alias venv='virtualenv venv && . venv/bin/activate'
alias de='deactivate'

### pip ###
alias pins='pip install'
alias pinse='pip install --editable'

### run jar file ###
alias jr='java -jar'

### nautilus ###
alias nt='nautilus'
# open current directory in nautilus
alias op='nt .'

### read content being written to a file in real time ###
alias tlf='tail -f'

### check storage space in system ###
alias storage='ncdu'

### maven stuff ###
alias mci='mvn clean install'
alias mdt='mvn dependency:tree'

alias ngconf='subl /etc/nginx/conf.d/default.conf'
alias ngreload='sudo nginx -s reload'

alias alert="echo $'\a'"

# git everything: 
# for branches with names like ticket-3242
# takes the ticket number and prepends "refs #3242 " to the commit
# and then pushes the current branch 
gevo(){
	# colors
	RED='\033[0;31m'
	NC='\033[0m' # No Color
	GREEN='\033[0;32m'

        # getting the name of the branch and getting the ticket number
	branchname=$(git symbolic-ref --short -q HEAD)

	array=("${(@s/-/)branchname}")

    ticketnumber=${array[2]}

        # if we can get the ticket number, we proceed with committing 
        # and pushing to origin.
        # Otherwise, we stop this procedure and show an error message
	if [ -z "$ticketnumber" ]
	then
	    printf "${RED}Invalid branch name${NC}\n"
	    # exit 1
	else
        echo "Ticket number: $ticketnumber"
	    printf "${GREEN}Valid branch name${NC}\n"

	    git add -A
	    git commit -m "refs #$ticketnumber $@"
	    git push origin HEAD
	fi
}

gc(){
	git_host='$1'
	git_username='$2'
	git_repo='$3'

	git clone "git@$1:$2/$3.git"
	cd $3
}

ghc(){
	github_username='$1'
	github_repo='$2'

	gc github.com $1 $2	
}

notebook() {
	source activate ml
	jupyter notebook
}

alias notes='cd /home/manparvesh/Desktop/github_repos/notes'

alias networks='chalo /home/manparvesh/Desktop/github_repos/notes/utd/sem3/computer-networks'

alias xclip="xclip -selection c"
