
# Apt-install various things necessary for Ruby, guest additions,
# etc., and remove optional things to trim down the machine.
rm -rf /var/lib/apt/lists/*
apt-get -y update
apt-get -y upgrade

apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev dkms
apt-get -y install vim

apt-get clean

# Install NFS client
apt-get -y install nfs-common nfs-kernel-server bindfs

# Install base utilities
apt-get -y install wget curl

# Install Rsync
apt-get -y install rsync