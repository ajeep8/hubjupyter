Start 1st time:

```
mkdir home srv
docker compose up -d

docker exec -it hubjupyter /bin/sh
# adduser user1
```

Then use browser visit http://localhost:8488, use user1 login, enjoy!

If you want to stop it, use: `docker-compose stop`, and restart use: `docker-compose start`.

DO NOT use `docker-compose down`, or your added users will lost.

Use jupyterlab-git:

you need create id_rsa/id_rsa.pub in ~/.ssh, and git clone repo 1st time, then jupyterlab-git can function. 

