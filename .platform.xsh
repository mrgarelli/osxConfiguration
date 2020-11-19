#________________________________________________________________________________
#__________Programs
aliases['ns'] = 'npm start'
aliases['lg'] = 'lazygit'

source-bash $(/usr/libexec/path_helper -s)
source-bash --seterrprevcmd "" /etc/profile

# for coreutils (realpath)
$PATH.append($HOME + '/usr/local/opt/coreutils/libexec/gnubin')

# for nvm
$NVM_DIR = "~/.nvm"
source-bash '~/.nvm/nvm.sh'

print('. ~/.platform.sh')
