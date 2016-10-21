# Terminal 
alias ll='ls -A' #'ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Vim
alias vimupdate='vim +PluginInstall +qall'
alias gvim='mvim'

# Maven
alias mci="mvn clean install"
alias mcit="mvn clean install && i itas deploy test"
alias mcist="mvn clean install && i itas deploy systest"
alias deploytest='function _deploytest(){ for x in test systest pettest petsystest; do i itas deploy $x $1; done };_deploytest'
alias mvn_skip_tests='mvn clean install -Dmaven.test.skip=true'
alias mver="mvn versions:display-dependency-updates versions:display-property-updates | grep 'INFO' | grep '>' | sort | uniq"

# Oslo Kommune
alias cdoslo="cd /Users/premer/dev/osloKommune"
alias cditas="cd /Users/premer/dev/osloKommune/itas"
alias cdtjenestebuss="cd /Users/premer/dev/osloKommune/itas/tjenestebuss"
alias cdoffentlig="cd /Users/premer/dev/osloKommune/itas/offentlige-grensesnitt"

# Git
alias gst="git status"
alias gbr="git branch"


gitCommitAll() {
   git commit -am "$1"
}

alias co=gitCommitAll

gitCheckoutBranch() {
   git checkout "$1"
}

alias gch=gitCheckoutBranch

alias getThesis='scp alexanpr@login.ifi.uio.no:~/thesis/thesis.pdf ~/school'

alias gco='git commit -at <(echo $(git rev-parse --abbrev-ref HEAD | cut -d_ -f 1)": ")'

alias gp='git push'

alias gpu='git pull'
