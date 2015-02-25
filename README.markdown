## Coral Vagrant boxes

These Vagrant boxes are meant to be very stripped down without any "bloat".

We build up on top of these basic images.  This way we can be sure that the
bootstrap and provisioning systems are functioning correctly.


### Installation
----------------

Ensure that you have Packer installed (and this project locally available)

http://www.packer.io/docs/installation.html


### Building Virtualbox image for Vagrant
-------------------------------

    cd {{this project directory}}
    packer build -only=virtualbox-iso vagrant-ubuntu-14.04.json


### Building VMWare image for Vagrant (not tested)
-------------------------------

    cd {{this project directory}}
    packer build -only=vmware-iso vagrant-ubuntu-14.04.json


### Building Docker image for Vagrant
-------------------------------

    cd {{this project directory}}
    packer build -only=docker -var 'docker_email={EMAIL}' -var 'docker_user={USER}' -var 'docker_password={PASSWORD}' vagrant-ubuntu-14.04.json


### Vagrant testing
-------------------

    vagrant box remove vagrant-ubuntu-14.04
    cd test/vagrant-ubuntu-14.04

    vagrant up ubuntu --provider=virtualbox
    # or
    vagrant up ubuntu --provider=docker

    vagrant ssh ubuntu

    # Have a look around

    vagrant destroy --force

