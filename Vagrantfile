# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Enable environment
  config.env.enable
  # Configuration for the VM
  config.vm.define "vmachine" do |vmachine|
    # Box Vagrant image to use
    vmachine.vm.box = ENV['VAGRANT_BOX']
    # Check for updates to the box on every vagrant up
    vmachine.vm.box_check_update = ENV['VAGRANT_BOX_CHECK_UPDATE']
    # Hostname vmachine
    vmachine.vm.hostname = ENV['VAGRANT_HOSTNAME']
    # Resources and provider configuration
    vmachine.vm.provider ENV['VAGRANT_DEFAULT_PROVIDER'] do |vb|
      vb.name = ENV['VAGRANT_NAME']
      vb.memory = ENV['VAGRANT_MEMORY']
      vb.cpus = ENV['VAGRANT_CPUS']
      vb.default_nic_type = ENV['VAGRANT_DEFAULT_NIC_TYPE']
    end
    # Provisioning machine
    vmachine.vm.provision "shell", inline: <<-SHELL
      # Update the system
      apt update
    SHELL
    # Install git
    vmachine.vm.provision "shell", path: "git.sh"
    # Install docker
    vmachine.vm.provision "shell", path: "docker.sh"
    # Permissions docker without sudo
    vmachine.vm.provision "shell", inline: <<-SHELL
      # Docker sudo group
      usermod -aG docker vagrant
      newgrp docker
      docker run hello-world
    SHELL
    # Install python
    vmachine.vm.provision "shell", path: "python.sh"
    # Forwarded ports
    vmachine.vm.network "forwarded_port", guest: ENV['VAGRANT_PORT_GUEST'], host: ENV['VAGRANT_PORT_HOST']
  end
end