Vagrant.configure("2") do |config|
  config.vm.provision :"shell", path: 'InitialEnvSetup.sh'
  config.vm.box = "centos/8"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.hostname = "AWX-Dev-Box"

  config.vm.provider :virtualbox do |vb|
      vb.customize [
        "modifyvm", :id,
        "--cpuexecutioncap", "50",
        "--memory", "2046"
      ]
    end
end
