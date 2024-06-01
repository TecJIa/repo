# -*- mode: ruby -*-
# vim: set ft=ruby :

MACHINES = {
  :otuslinux => {
        :box_name => "alma",
        :vm_name => "almalin",
        :ip_addr => '192.168.56.101',		
  },
}
Vagrant.configure("2") do |config|
      config.vm.define "boxname" do |box|
          box.vm.box = "alma"
          box.vm.host_name = "repovm"
          box.vm.synced_folder ".", "/home/pt/vagrant/repo"
          #box.vm.network "forwarded_port", guest: 3260, host: 3260+offset
          box.vm.network "private_network", ip: '192.168.56.101'
          box.vm.provider :virtualbox do |vb|
          vb.memory = 1024
          vb.cpus = 1
       end
#         box.vm.disk :disk, size: "1GB", name: "extra_storage"
#	  (0..4).each do |i|
# 	     box.vm.disk :disk, size: "250MB", name: "disk-#{i}"
#    	end
#	end
 	  box.vm.provision "shell", inline: <<-SHELL
	      mkdir -p ~root/.ssh
              cp ~vagrant/.ssh/auth* ~root/.ssh
              sudo sed -i 's/\#PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
              systemctl restart sshd
	  sh /home/pt/vagrant/repo/1_run_yum.sh
	  echo "Step 1 finished"
	  sleep 10
	  sh /home/pt/vagrant/repo/2_yumdownloader.sh
          echo "Step 2 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/3_rpm-Uvh.sh
          echo "Step 3 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/4_builddep.sh
          echo "Step 4 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/5_git_clone.sh
          echo "Step 5 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/6_cmake.sh
          echo "Step 6 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/7_ngx_brotli.sh
          echo "Step 7 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/8_nano_spec.sh
          echo "Step 8 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/9_build_rpm.sh
          echo "Step 9 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/10_build_rpm_2.sh
          echo "Step 10 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/11_start_nginx.sh
          echo "Step 11 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/12_make_repo_dir.sh
          echo "Step 12 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/13_nano_nginx.sh
          echo "Step 13 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/14_nginx-t-reload.sh
          echo "Step 14 finished"
          sleep 10
          sh /home/pt/vagrant/repo/15_EOF.sh
          echo "Step 15 finished"
          sleep 10
          sh /home/pt/vagrant/repo/16_EOF_CHECK.sh
          echo "Step 16 finished"
          sleep 10
	  sh /home/pt/vagrant/repo/17_wget+createrepo.sh
          echo "Step 17 finished"
          sleep 10
          echo "ALL DONE!"
	  
  	  SHELL
#      end
  end
end
