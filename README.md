## Build docker image

```
docker build . -t linux-local-image
```

## Run docker compose

```
docker-compose up -d
```

## SSH into container
```
docker exec -it linux-working-machine_app_1 /bin/bash
```

