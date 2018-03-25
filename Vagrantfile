Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"


  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
    vb.name = "UChatos"
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--vram", "16"]
  end

 config.vm.provision "shell", path: "provisioner.sh"

end
