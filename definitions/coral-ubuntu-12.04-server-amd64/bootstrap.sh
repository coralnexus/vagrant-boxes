
# Install git
apt-get -y install git || exit 1

# Pull down CORL bootstrap scripts
git clone https://github.com/coralnexus/corl-bootstrap.git /tmp/bootstrap || exit 1

# Initialize submodules
cd /tmp/bootstrap || exit 1
git submodule update --init --recursive || exit 1

# Execute the boostrap process
./bootstrap.sh || exit 1

# Cleanup after ourselves
rm -Rf /tmp/bootstrap || exit 1
