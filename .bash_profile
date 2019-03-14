export PATH="/usr/local/bin:$(getconf PATH)"

source "${HOME}/.bashrc"

export http_proxy="http://user:pass@naproxy.gm.com:8080"
export https_proxy="http://user:pass@naproxy.gm.com:8080"
export no_proxy="*.gm.com,bitbucket.gm.com,artifactory-test.gm.com"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export ANDROID_HOME="/usr/local/share/android-sdk"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export ARTIFACTORY_USERNAME=kzgxmp
export ARTIFACTORY_PASSWORD=LDR:wyslmwIgnbmas?42
