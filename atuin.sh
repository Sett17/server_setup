curl https://raw.githubusercontent.com/rcaloras/bash-preexec/master/bash-preexec.sh -o ~/.bash-preexec.sh
printf '\n[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh\n' >> ~/.bashrc
echo 'eval "$(atuin init bash --disable-up-arrow)"' >> ~/.bashrc

bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)

atuin import auto
