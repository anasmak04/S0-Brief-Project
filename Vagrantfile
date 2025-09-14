Vagrant.configure("2") do |config|

  # Machine Web Server
  config.vm.define "web-server" do |web|
    web.vm.box = "ubuntu/focal64"
    web.vm.hostname = "web-server"

    # Network
    web.vm.network "private_network", ip: "192.168.56.10"
    web.vm.network "forwarded_port", guest: 80, host: 8080

    # Provision script
    web.vm.provision "shell", path: "scripts/provision_web.sh"

    # Shared folder
    web.vm.synced_folder "./website", "/var/www/html"

    # VirtualBox settings
    web.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

  # Machine Database Server
  config.vm.define "db-server" do |db|
    db.vm.box = "ubuntu/focal64"
    db.vm.hostname = "db-server"

    # Network
    db.vm.network "private_network", ip: "192.168.56.20"
    db.vm.network "forwarded_port", guest: 3306, host: 3307

    # Provision script
    db.vm.provision "shell", path: "scripts/provision_db.sh"

    # VirtualBox settings
    db.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

end
