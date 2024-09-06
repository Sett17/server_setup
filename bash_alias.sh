echo 'bind -f ~/.inputrc' >> ~/.bash_aliases
echo "alias l='exa -l'
alias lh='exa -l -s changed'
alias lg='lazygit '
alias v='nvim '
" >> ~/.bash_aliases
echo 'mkcd () { mkdir -vp "$@" && cd "$@"; }
fastpush () { DATE=`date +"%D %T"`; git add . --all 2> /dev/null && git commit --allow-empty -m "$DATE" && git push; }
' >> ~/.bash_aliases
echo "export EDITOR=nvim" >> ~/.bash_aliases

source ~/.bashrc
