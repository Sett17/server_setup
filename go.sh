wget "https://dl.google.com/go/$(curl https://go.dev/VERSION?m=text -s | awk 'NR==1').linux-amd64.tar.gz"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "$(curl https://go.dev/VERSION?m=text -s | awk 'NR==1').linux-amd64.tar.gz"
rm "$(curl https://go.dev/VERSION?m=text -s | awk 'NR==1').linux-amd64.tar.gz"

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc

source ~/.bashrc

/usr/local/go/bin/go install github.com/jesseduffield/lazygit@latest
/usr/local/go/bin/go install github.com/sett17/ai-shell@latest
ln -s ~/go/bin/ai-shell /usr/local/bin/ai-shell
