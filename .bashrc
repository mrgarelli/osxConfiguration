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
alias pypi='bash ~/Scripts/pypi/run.sh'

alias C='bash ~/Scripts/gcc/C.sh'
alias todo='bash ~/Scripts/todo/run.sh'
alias clk='bash ~/Scripts/clk/run.sh'

alias p='python3'
alias ns='npm start'
alias clrCsh='watchman watch-del-all && react-native start --reset-cache'
alias rn='python3 ~/Scripts/rn/run.py'

#________________________________________________________________________________
#__________Open
alias pdf="open"

alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'

alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.quote_plus(sys.argv[1]))"'
