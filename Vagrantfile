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
      apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    SHELL
    # Install python
    vmachine.vm.provision "shell", path: "python.sh"
    # Install terraform
    vmachine.vm.provision "shell", path: "terraform.sh"
    # Install ansible
    vmachine.vm.provision "shell", path: "ansible.sh"
    # Install kubectl
    vmachine.vm.provision "shell", path: "kubectl.sh"
    # Install miniKube
    vmachine.vm.provision "shell", path: "minikube.sh"
    # Install helm
    vmachine.vm.provision "shell", path: "helm.sh"
    # Install aws-cli
    vmachine.vm.provision "shell", path: "aws-cli.sh"
    # Install gcloud
    vmachine.vm.provision "shell", path: "gcloud-cli.sh"
    # Install az-cli
    vmachine.vm.provision "shell", path: "az-cli.sh"
    # Install kind
    vmachine.vm.provision "shell", path: "kind.sh"
    # Install kops
    vmachine.vm.provision "shell", path: "kops.sh"
    # Install krew (Kubectl plugin manager) and plugins ctx, ns, tree, view-visualizations, access-matrix
    vmachine.vm.provision "shell", path: "krew.sh"
    # Forwarded ports
    vmachine.vm.network "forwarded_port", guest: ENV['VAGRANT_PORT_GUEST'], host: ENV['VAGRANT_PORT_HOST']
  end
end