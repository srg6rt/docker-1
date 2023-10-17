FRST_STATIC_IP     =   "192.168.1.165"

.\wget.exe https://github.com/FaztWeb/php-mysql-crud/archive/refs/heads/master.zip
.\unzip.exe .\master.zip


Vagrant.configure(2) do |config|
  config.trigger.before [:up, :provision, :reload] do |trigger|
  trigger.info = "Running recongfig_configcred.sh locally..."
  trigger.run = {path: "recongfig_configcred.sh"}

      # Install fourth-unit
      config.vm.define "ubuntu-unit" do |frth|
          frth.vm.box = "ubuntu/jammy64"
          frth.vm.network "public_network", :bridge => "eth0", ip: FRST_STATIC_IP
          frth.vm.provision :shell, :inline => "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;", run: "always"
          frth.vm.provision "shell", path: "dckr_bootstrap.sh"
          frth.vm.synced_folder "tempo/", "/home/vagrant", owner: "vagrant", group: "vagrant"#, :mount_options => ['dmode=777,fmode=666']
          frth.vm.provider :virtualbox do |v|
            
            # Run GUI VirtualBox
            #v.gui = true
            v.memory = 4048
            v.cpus = 2
          end
      end
end
