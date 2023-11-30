## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


## Proxy if you need
# export http_proxy=http://username:password@127.0.0.1:8080
# export https_proxy=$http_proxy
# export HTTP_PROXY=$http_proxy
# export HTTPS_PROXY=$http_proxy
# git config --global http.proxy $http_proxy
# git config --global http.proxy $http_proxy
# git config --global https.proxy $http_proxy


## git
git config --global user.name "username"
git config --global user.email "mail_at_dot_com"
git config --global push.default current
git config --global pull.default current
git config --global pull.rebase true
git config --global core.autocrlf false
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.graph "log --graph --date-order --all --pretty=format:'%h %C(green)%ad%C(cyan reverse)%cn%C(reset) %C(white bold)%s %C(red reverse)%w(80)%d' --date=short"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lga "log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
# DS_Storeを無視
mkdir -p ~/.config/git
echo '.DS_Store' >> ~/.config/git/ignore

# zsh
## Oh My zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#以下で書き込み
##echo '' >> ~/.zshrc


#homebrewで必要そうなもの
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask clipy
brew install --cask cmd-eikana
brew install --cask discord
brew install --cask zoom
brew install tmux
brew install --cask kindle
#その他
brew install --cask raycast
brew install mysql
brew install --cask mysqlworkbench
brew install awscli
brew install connect
brew install git-secrets
brew install --cask corretto
brew install yarn

# asdf
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# #Elastic Beanstalk
# brew install awsebcli
# eb --version

# #node
# #nodebrew
# brew install nodebrew
# #パス追加
# echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bash_profile #bashの場合
# echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc #zshの場合
# #nodebrew setup
# nodebrew install-binary v19.3.0
# nodebrew use v19.3.0
# node -v # must be v19.3.0#nvm
# #amplify
# npm install -g @aws-amplify/cli
# amplify configure

# #ruby
# ## rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(rbenv init -)"' >> ~/.zprofile
# source ~/.zprofile
# brew install rbenv ruby-build
# # check
# rbenv install --list

# brew install nvm
# mkdir ~/.nvm
# echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
# echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm' >> ~/.zshrc
# echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion' >> ~/.zshrc
# echo 'export NVM_NODE="$NVM_BIN/node" #for vscode debug ' >> ~/.zshrc
# nvm i v14.17.5
# node -v 


# #Python 
# brew install pyenv
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc
# export PY_VER=3.10.5
# pyenv install $PY_VERB
# pyenv global $PY_VER

## ssh
#mkdir ~/.ssh
#touch ~/.ssh/config