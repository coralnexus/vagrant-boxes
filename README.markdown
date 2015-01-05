## Coral Vagrant boxes

These Vagrant boxes are meant to be very stripped down without any "bloat".

We build up on top of these basic images.  This way we can be sure that the
bootstrap and provisioning systems are functioning correctly.


### Installation
----------------

Ensure that you have Packer installed (and this project locally available)

http://www.packer.io/docs/installation.html


### Building Virtualbox machine for Vagrant
-------------------------------

    cd {{this project directory}}
    packer build -only=virtualbox-iso ubuntu-14.04-server-amd64.json


### Building VMWare machine for Vagrant
-------------------------------

    cd {{this project directory}}
    packer build -only=vmware-iso ubuntu-14.04-server-amd64.json


### Building Docker machine for Vagrant
-------------------------------

    cd {{this project directory}}
    packer build -only=docker -var='version={#.#}' -var='password={PASSWORD}' ubuntu-14.04-server-amd64.json


### Vagrant testing
-------------------

    vagrant box remove ubuntu-14.04-server-amd64
    cd test/ubuntu-14.04-server-amd64

    vagrant up
    vagrant ssh

    # Have a look around

    vagrant destroy

