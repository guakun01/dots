export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
     	z
     	zsh-autosuggestions
     	zsh-syntax-highlighting
    	history
)
source $ZSH/oh-my-zsh.sh
alias pc="proxychains4"
alias gcgua="git config user.name guakun01;\
  git config user.email guakun01@gmail.com;\
  git commit -v"

unalias z 2> /dev/null
j() {
    [ $# -gt 0 ] && zshz "$*" && return
    cd "$(zshz -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

jj() {
    cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q $_last_z_args)"
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


