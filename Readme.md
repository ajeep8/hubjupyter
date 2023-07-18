# 制作

```
# 运行原jupyterhub：
docker run -d --rm -p 8480:8000 -p 8481:8001 jupyterhub/jupyterhub:3.0.0

# 访问http://localhost:8480，无法登录。登录容器：
docker exec -it f974edf95f4d /bin/sh
adduser user1

# 访问http://localhost:8480，可以登录，但无法spawn。在容器中：
pip install jupyter (自动也安装了jupyter_server等)

# 可spawn，为jupyter界面
pip install jupyterlab

# 重新登录，user1还是jupyter界面，user2是jupyterlab界面
# 如果直接安装jupyterlab不安装jupyter，似乎也没问题
# 有3个进程：
# jupyterhub、configurable-http-proxy和jupyterhub-singleuser
# 每打开一个kernel就增加一个python3 -m ipykernel_launcher
```

# 使用

## Start 1st time

```
mkdir home srv
docker compose up -d

docker exec -it hubjupyter /bin/sh
## adduser user1
```

Then use browser visit http://localhost:8488, use user1 login, enjoy!

## pip install

Any package need to install, you should docker exec into container and run `pip install pkgname`.

Using graphviz, not only `pip install graphviz`, need `apt install graphviz`


## Start next time

If you want to stop it, use: `docker-compose stop`, and restart use: `docker-compose start`.

DO NOT use `docker-compose down`, or your added users and packages will lost.

## Use jupyterlab-git

you need create id_rsa/id_rsa.pub in ~/.ssh, and git clone repo 1st time, then jupyterlab-git can function. 

## Debug

### matplotlib Chinese

```
pip show matplotlib
```

find the matplotlib path, and copy simhei.ttf(mpl-data/fonts/ttf) & matplotlibrc(mpl-data) there

## matplotlibrc

```
font.family: sans-serif
font.serif: SimHei, DejaVu Serif, Bitstream Vera Serif,......
axes.unicode_minus: False
```

### Spawn failed

/home/sam not belong to the just added sam.
