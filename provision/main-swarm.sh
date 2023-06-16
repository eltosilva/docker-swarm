#!/bin/bash

sudo docker swarm init --advertise-addr enp0s8:2377

echo "#!/bin/bash" > /vagrant/provision/worker-swarm.sh
echo "sudo $(sudo docker swarm join-token worker)" >> /vagrant/provision/worker-swarm.sh