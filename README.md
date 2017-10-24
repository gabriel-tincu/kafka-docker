## kafka docker compose file for 3 (or more if you want) brokers and a ZK instance

## Running

  - get [docker](https://www.docker.com/)
  - get [docker-compose](https://docs.docker.com/compose/)
  - make sure you export HOST_IP as an env var containing your host actual ip (for the broker announce to go smoothly)
  - run it with `docker-compose -d -f docker-compose.yml up`
  - work
  - kill it with `docker-compose -f docker-compose.yml down`
