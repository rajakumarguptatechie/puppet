# puppet
This is to used for puppet configuration and testing modules.

## Run puppet agent container
docker run --rm -it --hostname puppetagent --name puppetagent rajakumargupta/puppetagent:3.8.7 bash

## Run puppet master container
docker run --rm -it --hostname puppetmaster --name puppetmaster rajakumargupta/puppetmaster:3.8.7 bash

## Update container's ip of agent and master on below files on both containers:
/etc/hosts
/etc/sysconfig/network
