# -*- mode: ruby -*-
# vi: set ft=ruby :

username="#{ENV['SSH_AUTH_SOCK']}"
uid=username.gsub(/[^0-9]/, '')

Vagrant.configure("2") do |config|
    config.vm.box = "indrisepos/lxc-999-bionic"
    config.vm.provision 'shell', path: 'provision.sh', args: [
uid
]

end
