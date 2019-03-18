source ${HOME}/Scripts/colorSettings.sh

#________________________________________________________________________________
#__________Local (not trackable)
source ${HOME}/.locrc.sh

#________________________________________________________________________________
#__________File
alias c='clear'
alias copy='bash ~/Scripts/edit/copy.sh'
alias view='bash ~/Scripts/edit/view.sh'
alias fnd='bash ~/Scripts/fnd/run.sh'
alias search='bash ~/Scripts/search.sh'

#________________________________________________________________________________
#__________To Symlink
alias b='bash ~/Scripts/b.sh'
alias hr='bash ~/Scripts/hr.sh'
alias hs='bash ~/Scripts/hs.sh'
alias s='bash ~/Scripts/s.sh'
alias sz='bash ~/Scripts/sz.sh'
alias t='bash ~/Scripts/t.sh'
alias r='bash ~/Scripts/r.sh'

#________________________________________________________________________________
#__________System
alias apt-size='bash ~/Scripts/apt-size.sh'

#________________________________________________________________________________
#__________Programs
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias g='bash ~/Scripts/git/g.sh'
alias cg='bash ~/Scripts/git/cg.sh'

alias C='bash ~/Scripts/gcc/C.sh'
alias todo='bash ~/Scripts/todo/run.sh'
alias clk='bash ~/Scripts/clk/run.sh'

alias ns='npm start'
alias rct='/Users/kzgxmp/.nvm/versions/node/v9.7.1/bin/react-native'
alias clrCsh='watchman watch-del-all && react-native start --reset-cache'

#________________________________________________________________________________
#__________Open
alias pdf="open"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
