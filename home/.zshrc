source ~/.homesick/repos/dotfiles/antigen/antigen.zsh
zsh ~/.test.zsh

antigen use oh-my-zsh
antigen-bundle git
antigen-bundle gem
antigen-bundle ruby
antigen-bundle rvm
antigen-bundle brew
antigen-bundle bundler

antigen-bundle zsh-users/zsh-syntax-highlighting

antigen-theme robbyrussell

antigen-apply

DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

# Colored man pages (from https://wiki.archlinux.org/index.php/Man_Page#Colored_man_pages)
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;47;34m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

alias dfw="ssh travis.whiteaker@bastion1.dfw1.rackspace.net"
alias iad="ssh travis.whiteaker@bastion1.iad3.rackspace.net"
alias lon="ssh travis.whiteaker@bastion1.lon3.rackspace.net"
alias hkg="ssh travis.whiteaker@bastion1.hkg1.rackspace.net"
alias sat="ssh travis.whiteaker@bastion1.sat6.rackspace.net"
alias ord="ssh travis.whiteaker@bastion1.ord1.rackspace.net"
alias syd="ssh travis.whiteaker@bastion1.syd2.rackspace.net"
alias cbast="ssh travis.whiteaker@cbast.dfw.rackspace.com"
alias ul="ulogin"
alias cl="clear"
alias pi="ping"
alias tray="traceroute"
alias seed="ssh trav@seed.trwhiteaker.com"
alias asa="ssh trav@192.168.10.1"
alias home="ssh trav@vpn.trwhiteaker.com"
alias cs="cowsay"
alias archive="ssh trav@archiveark.com"
alias config="ssh rack@config.trwhiteaker.com"
alias zeus="ssh trav@zeus1"
alias t="stoken"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
