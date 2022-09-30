FROM jupyterhub/jupyterhub:3.0.0

COPY pkg/simhei.ttf /usr/share/fonts/
RUN apt update; apt install -y git graphviz \
  && pip install jupyter_server jupyterlab jupyterlab-language-pack-zh-CN jupyter jupyterlab-git \
      numpy pandas matplotlib diagrams seaborn \
      brewer2mpl joypy pywaffle statsmodels squarify calmap sklearn \
  && mkdir -p /usr/lib/python3/dist-packages/matplotlib/mpl-data/fonts/ttf \
  && ln -s /usr/share/fonts/simhei.ttf /usr/lib/python3/dist-packages/matplotlib/mpl-data/fonts/ttf/
COPY matplotlibrc /usr/lib/python3/dist-packages/matplotlib/mpl-data/
