# CapsuleTime-Docker
CapsuleTime Server with Docker

## Requirements

---

- docker
- docker-compose

## Settings

---

### docker-compose.yml

#### .env

- modify .env

```
WEB_PORT=3014
MYSQL_HOST=db
MYSQL_ROOT_PASSWORD=your_passwd
MYSQL_DATABASE=test
```

#### db/my.sql

1. change db/my.sql to your sql-init 

2. modify the db/Dockerfile


#### Deploy && Usage

```bash
# start
$ docker-compse up -d

# stop
$ docker-compose down

# remove
$ docker-compose down -v
```

```
# show docker images
$ docker images

# show docker container
$ docker ps -a

# remove docker containers
$ docker rm <containerId || containerName>

# remove docker all containers
$ docker rm `docker ps`

# start, stop, restart container
$ docker <start || stop || restart> <containerId || containerName>

# remove docker images
$ docker rmi -f <imageID || imageName>

# remove docker all images
$ docker rmi `docker images`
```
