FROM jupyterhub/jupyterhub:3.0.0
RUN sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list \
 && sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list \
 && apt update; apt install git \
 && pip install jupyter_server jupyterlab jupyterlab-language-pack-zh-CN jupyter jupyterlab-git
