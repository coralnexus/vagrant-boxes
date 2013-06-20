
# Coral Vagrant boxes

The contained Vagrant boxes are hosted here:

See: http://boxes.coralnexus.net


### Installation
----------------

Ensure VeeWee installed using Bundler:

See: http://gembundler.com

    gem install bundler
    bundle install


### Building Virtualbox machine
-------------------------------

    bundle exec veewee vbox build --force --nogui coral-ubuntu-12.04-server-amd64


### Packaging for Vagrant
-------------------------

    rm -f boxes/coral-ubuntu-12.04-server-amd64.box
    vagrant package --base coral-ubuntu-12.04-server-amd64 --output boxes/coral-ubuntu-12.04-server-amd64.box

    
### Vagrant testing
-------------------

    vagrant box remove coral-ubuntu-12.04-server-amd64 virtualbox
    vagrant box add coral-ubuntu-12.04-server-amd64 boxes/coral-ubuntu-12.04-server-amd64.box
    
    cd test/coral-ubuntu-12.04-server-amd64
    
    vagrant up
    vagrant ssh
    
    # Have a look around
    
    vagrant destroy
