## kafka docker compose file for 3 (or more if you want) brokers and a ZK instance

## Running

  - get [docker](https://www.docker.com/)
  - get [docker-compose](https://docs.docker.com/compose/)
  - make sure you export HOST_IP as an env var containing your host actual ip (for the broker announce to go smoothly)
  - run it with `docker-compose -d -f docker-compose.yml up`
  - work
  - kill it with `docker-compose -f docker-compose.yml down`

## Docker swarm
Read about [docker swarm](https://docs.docker.com/engine/swarm/) and create a [node](https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/) on the host machine
In theory, you should change the compose file version to 3.4 and you should be able to run it with `docker stack deploy -c docker-compose.yml kafka`, and when you're done kill it with `docker stack rm kafka`
