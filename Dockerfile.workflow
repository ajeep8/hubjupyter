FROM jupyterhub/jupyterhub:3.0.0

COPY pkg/simhei.ttf /usr/share/fonts/
RUN apt update; apt install -y git graphviz \
  && pip install jupyter_server jupyterlab jupyterlab-language-pack-zh-CN jupyter jupyterlab-git \
      numpy pandas matplotlib diagrams seaborn \
      brewer2mpl joypy pywaffle statsmodels squarify calmap sklearn \
  && mkdir -p /usr/local/lib/python3.10/dist-packages/matplotlib/mpl-data/fonts/ttf \
  && ln -s /usr/share/fonts/simhei.ttf /usr/local/lib/python3.10/dist-packages/matplotlib/mpl-data/fonts/ttf/
COPY matplotlibrc /usr/local/lib/python3.10/dist-packages/matplotlib/mpl-data/

# useradd -m user1 -p `openssl passwd -1 -salt 'salt' thepasswd`
# useradd -m user2 -p `openssl passwd -1 thepasswd`
