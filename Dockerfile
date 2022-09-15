FROM jupyterhub/jupyterhub:3.0.0
RUN pip install jupyter_server \
 && pip install jupyterlab \
 && pip install jupyterlab-language-pack-zh-CN \
 && pip install jupyter

