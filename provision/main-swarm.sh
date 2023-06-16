#!/bin/bash

sudo docker swarm init --advertise-addr 192.168.56.10

echo "#!/bin/bash" > /vagrant/provision/worker-swarm.sh
echo "sudo $(sudo docker swarm join-token worker)" >> /vagrant/provision/worker-swarm.sh