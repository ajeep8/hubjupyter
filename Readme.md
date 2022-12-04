# Start 1st time

```
mkdir home srv
docker compose up -d

docker exec -it hubjupyter /bin/sh
# adduser user1
```

Then use browser visit http://localhost:8488, use user1 login, enjoy!

# pip install

Any package need to install, you should docker exec into container and run `pip install pkgname`.

Using graphviz, not only `pip install graphviz`, need `apt install graphviz`


# Start next time

If you want to stop it, use: `docker-compose stop`, and restart use: `docker-compose start`.

DO NOT use `docker-compose down`, or your added users and packages will lost.

# Use jupyterlab-git

you need create id_rsa/id_rsa.pub in ~/.ssh, and git clone repo 1st time, then jupyterlab-git can function. 

# Debug

## matplotlib Chinese

```
pip show matplotlib
```

find the matplotlib path, and copy simhei.ttf(mpl-data/fonts/ttf) & matplotlibrc(mpl-data) there

```
# matplotlibrc
font.family: sans-serif
font.serif: SimHei, DejaVu Serif, Bitstream Vera Serif,......
axes.unicode_minus: False
```

## Spawn failed

/home/sam not belong to the just added sam.

