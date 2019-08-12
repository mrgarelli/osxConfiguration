# export PS1="\w \$ "
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
alias b='bash ~/Scripts/b/run.sh'
alias hr='bash ~/Scripts/hr.sh'
alias hs='bash ~/Scripts/hs.sh'
alias s='bash ~/Scripts/s.sh'
alias sz='bash ~/Scripts/sz.sh'
alias r='bash ~/Scripts/r.sh'

t="${HOME}/Scripts/t.sh"
alias t="bash ${t}"
alias grp="bash ${t} | grep -i"
alias tsc="${HOME}/Desktop/tardis/packages/greenfield-container/node_modules/typescript/bin/tsc"

#________________________________________________________________________________
#__________System
alias apt-size='bash ~/Scripts/apt-size.sh'

#________________________________________________________________________________
#__________Programs
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias g='bash ~/Scripts/git/g.sh'
alias cg='bash ~/Scripts/git/cg.sh'
alias pypi='bash ~/Scripts/pypi/run.sh'

alias C='bash ~/Scripts/gcc/C.sh'
alias todo='bash ~/Scripts/todo/run.sh'
alias clk='bash ~/Scripts/clk/run.sh'
alias url='python3 ~/Scripts/url/run.py'

alias p='python3'
alias ns='npm start'
alias clrCsh='watchman watch-del-all && react-native start --reset-cache'
alias rn='python3 ~/Scripts/rn/run.py'

#________________________________________________________________________________
#__________Open
alias pdf="open"
