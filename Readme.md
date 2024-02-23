# Vagrant config machine Devops tools

Vagrant configuration to create a virtual machine with basic tools devops.

## Tools provisioned

- **homebrew**: Package manager
- **Git**: Version control system
- **Docker**: Containerization platform
- **Docker Compose**: Tool for defining and running multi-container Docker applications
- **Python**: Programming language
- **Terraform**: Infrastructure as code software
- **Ansible**: Automation tool
- **Kubectl**: Command line tool for Kubernetes
- **minikube**: Tool that makes it easy to run Kubernetes locally
- **Helm**: Package manager for Kubernetes
- **AWS CLI**: Command line tool for AWS
- **gcloud**: Command line tool for Google Cloud Platform
- **Kind**: Tool for running local Kubernetes clusters using Docker container “nodes”
- **K9s**: Terminal-based UI to interact with your Kubernetes clusters
- **kops**: Tool to create, destroy, upgrade and maintain production-grade, highly available, Kubernetes clusters from the command line
- **krew**: Package manager for kubectl plugins, to extend kubectl's functionality:
  - **kubectx**: Tool to switch between clusters and namespaces
  - **kubens**: Tool to switch between Kubernetes namespaces
  - **kubetree**: Tool to visualize the structure of Kubernetes resources
  - **kubeview-utilization**: Tool to visualize the resource utilization of Kubernetes resources
  - **kubeaccess-matrix**: Tool to visualize the access matrix of Kubernetes resources


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
