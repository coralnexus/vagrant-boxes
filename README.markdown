
# Coral Vagrant boxes

To package a new Coral Vagrant basebox:

Ensure VeeWee installed.

    gem install veewee

Or install as referenced here:
https://github.com/jedi4ever/veewee/blob/master/doc/installation.md

    veewee vbox build 'coral-ubuntu-12.04-server-amd64'
    
Or if you would rather use Bundler: (make sure you understand Bundler)
http://gembundler.com

    bundle exec veewee vbox build 'coral-ubuntu-12.04-server-amd64'
    
Then to package a box for Vagrant:

    vagrant package --base 'coral-ubuntu-12.04-server-amd64' --output 'boxes/coral-ubuntu-12.04-server-amd64.box'
