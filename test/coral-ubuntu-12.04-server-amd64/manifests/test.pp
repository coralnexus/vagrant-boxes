
file { '/etc/motd':
  content => "Welcome to your Vagrant-built virtual machine!
Managed by Puppet.\n\n",
  mode => '0644'
}
