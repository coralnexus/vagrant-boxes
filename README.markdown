
# Coral Vagrant boxes

The contained Vagrant boxes are hosted here:

See: http://boxes.coralnexus.net

---
### Installation

Ensure VeeWee installed.

    gem install veewee

Or install as referenced here:

See: https://github.com/jedi4ever/veewee/blob/master/doc/installation.md

---
### Building Virtualbox machine

    veewee vbox build --force --nogui coral-ubuntu-12.04-server-amd64
    
Or if you would rather use Bundler: (make sure you understand Bundler)

See: http://gembundler.com

    bundle exec veewee vbox build --force --nogui coral-ubuntu-12.04-server-amd64

---
### Packaging for Vagrant

    rm -f boxes/coral-ubuntu-12.04-server-amd64.box
    vagrant package --base coral-ubuntu-12.04-server-amd64 --output boxes/coral-ubuntu-12.04-server-amd64.box
    
---
### Vagrant testing

    vagrant box remove coral-ubuntu-12.04-server-amd64 virtualbox
    vagrant box add coral-ubuntu-12.04-server-amd64 boxes/coral-ubuntu-12.04-server-amd64.box
    
    cd test/coral-ubuntu-12.04-server-amd64
    
    vagrant up
    vagrant ssh
    
    # Have a look around
    
    vagrant destroy
