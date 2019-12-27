curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt update
sudo apt -y install build-essential \
    python2.7 python2.7-dev \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    docker-ce docker-ce-cli containerd.io

sudo curl -L https://raw.githubusercontent.com/docker/compose/1.25.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker restart
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 100
