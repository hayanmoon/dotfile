export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/go

source ~/.alias

fpath+=("$HOME/.zsh/pure")

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type minikube > /dev/null; then
eval $(minikube -p minikube docker-env)
fi

autoload -U promptinit; promptinit
prompt pure
