FROM jupyterhub/jupyterhub:3.0.0

COPY pkg/simhei.ttf /usr/share/fonts/
RUN apt update; apt install -y git graphviz \
  && pip install jupyter_server jupyterlab jupyterlab-language-pack-zh-CN jupyter jupyterlab-git \
      numpy pandas matplotlib diagrams seaborn \
      brewer2mpl joypy pywaffle statsmodels squarify calmap sklearn \
  && mkdir -p /usr/lib/python3/dist-packages/matplotlib/mpl-data/fonts/ttf \
  && ln -s /usr/share/fonts/simhei.ttf /usr/lib/python3/dist-packages/matplotlib/mpl-data/fonts/ttf/ \
  && mkdir -p /usr/share/fonts/truetype/noto \
  && ln -s /usr/share/fonts/simhei.ttf /usr/share/fonts/truetype/noto/ \
  && useradd -m user1 -p `openssl passwd -1 -salt 'salt' thepasswd`
COPY matplotlibrc /usr/lib/python3/dist-packages/matplotlib/mpl-data/

# useradd -m user1 -p `openssl passwd -1 -salt 'salt' thepasswd`
# useradd -m user2 -p `openssl passwd -1 thepasswd`
