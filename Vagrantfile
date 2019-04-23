# -*- mode: ruby -*-
# vi: set ft=ruby :


webserver_IP               = '192.168.56.101'
database_IP                = '192.168.56.102'
OS                      = "debian/jessie64"

Vagrant.configure("2") do |config|

  config.ssh.insert_key = true

  # define webserver server
  config.vm.define "webserver" do |webserver|
    webserver.vm.hostname = "ansible-webserver"
    webserver.vm.box = OS
    #webserver.vm.synced_folder ".", "/home/vagrant/src", mount_options: ["dmode=775,fmode=664"]
    webserver.vm.network "private_network", ip: webserver_IP
    webserver.vm.provider "virtualbox" do |v|
      v.name = "webserver"
      v.cpus = 2
      v.memory = 3072
    end
    config.vm.provision "file", source:"~/.ssh/id_rsa.pub", destination:"~/.ssh/authorized_keys"
  end

  # define database server
  config.vm.define "database" do |database|
    database.vm.hostname = "ansible-database"
    database.vm.box = OS
    database.vm.network "private_network", ip: database_IP
    database.vm.provider "virtualbox" do |v|
      v.name = "database"
      v.cpus = 2
      v.memory = 3072
    end
    config.vm.provision "file", source:"~/.ssh/id_rsa.pub", destination:"~/.ssh/authorized_keys"
  end

end
