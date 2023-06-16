vms = {
  'master' => { 'memory' => '1024', 'cpus' => '1', 'box' => 'ubuntu/mantic64', 'ip' => '10', 'provision' => 'main-swarm.sh'},
  'node01' => { 'memory' => '1024', 'cpus' => '1', 'box' => 'ubuntu/mantic64', 'ip' => '11', 'provision' => 'worker-swarm.sh'},
  'node02' => { 'memory' => '1024', 'cpus' => '1', 'box' => 'ubuntu/mantic64', 'ip' => '12', 'provision' => 'worker-swarm.sh'},
  'node03' => { 'memory' => '1024', 'cpus' => '1', 'box' => 'ubuntu/mantic64', 'ip' => '13', 'provision' => 'worker-swarm.sh'}
}

Vagrant.configure("2") do |config|
  vms.each do |name, conf|
    config.vm.define "#{name}" do |my|
      my.vm.box = conf['box']
      my.vm.hostname = "#{name}"
#      my.vm.network 'private_network', type: 'dhcp'
      my.vm.network 'private_network', ip: "192.168.56.#{conf['ip']}"
      my.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end

      my.vm.provision 'shell', path: "provision/docker.sh"
      my.vm.provision 'shell', path: "provision/#{conf['provision']}"
    end
  end
end
