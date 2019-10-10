# -*- mode: ruby -*-
# vi: set ft=ruby :

username="#{ENV['SSH_AUTH_SOCK']}"
uid=username.gsub(/[^0-9]/, '')


Vagrant.configure("2") do |config|
    config.vm.box = "indrisepos/lxc-999-bionic"

    # SSH
    config.ssh.forward_agent = true

    # SSH key provisioning
    config.vm.provision 'file', source: '~/.ssh/id_rsa', destination: '~/.ssh/id_rsa'
    config.vm.provision 'file', source: '~/.ssh/id_rsa.pub', destination: '~/.ssh/id_rsa.pub'

    config.vm.provision 'shell', path: 'provision.sh', args: [
uid
]

end
