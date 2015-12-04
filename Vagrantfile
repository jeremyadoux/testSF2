VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.define "docker_dev_backend"
    
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vm.network "private_network", ip: "192.168.50.80"
  config.vm.hostname = "backend.dev"

  config.vm.provision :hostmanager
  
  config.vm.provider :virtualbox do |vb|
      vb.name = "docker_dev_backend"
	  vb.memory = 2048
	  vb.cpus = 2
  end

  config.vm.provision "shell", path: "./VM/script/scriptDocker.sh"
end