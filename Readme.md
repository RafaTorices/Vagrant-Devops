# Vagrant config machine Devops tools

Vagrant configuration to create a virtual machine with basic tools devops.

## Table of Contents

- **git.sh**: Script to install git
- **docker.sh**: Script to install docker
- **python.sh**: Script to install python
- **.env.example**: Example of environment configuration
- **Vagrantfile**: Vagrant configuration file
- **README.md**: This file

## Tools provisioned

- **Git**: Version control system
- **Docker**: Containerization platform
- **Python**: Programming language

## Previous considerations

1. You must define the environment variables in the file ```.env``` to run the virtual machine. The file ```.env.example``` is an example of the configuration.
2. Install the plugin ```vagrant plugin install vagrant-env``` to use the environment variables.

## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
  
## Installation

1. Clone the repository
2. Run `vagrant up` to start the virtual machine
3. Run `vagrant ssh` to access the virtual machine via SSH (In case of not working SSH access, use username: vagrant, password: vagrant)

## Commands

- `vagrant up` to start the virtual machine
- `vagrant halt` to stop the virtual machine
- `vagrant destroy` to delete the virtual machine
- `vagrant ssh` to access the virtual machine via SSH (In case of not working SSH access, use username: vagrant, password: vagrant)
- `vagrant provision` to re-run the provisioning scripts
- `vagrant reload` to restart the virtual machine
- `vagrant status` to check the status of the virtual machine

## Author

Rafael Torices
