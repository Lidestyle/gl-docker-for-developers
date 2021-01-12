%w(vagrant-multi-putty).each { |plugin| system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin }

Vagrant.configure('2') do |config|
  config.vm.synced_folder '.', '/vagrant'

  config.vm.define 'engine' do
    config.vm.box = 'bento/ubuntu-18.04'
    config.vm.hostname = 'docker-for-developers'
    config.vm.provision 'shell', path: 'docker.sh', privileged: true
    config.vm.network 'private_network', ip: '192.168.10.10'
    config.vm.provider :virtualbox do |vb|
      vb.name   = 'engine'
      vb.memory = '8096'
      vb.cpus   = 2
    end
  end

end
