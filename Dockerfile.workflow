FROM jupyterhub/jupyterhub:3.0.0
RUN apt update; apt install -y git graphviz \
 && pip install jupyter_server jupyterlab jupyterlab-language-pack-zh-CN jupyter jupyterlab-git \
      numpy pandas matplotlib diagrams seaborn \
      brewer2mpl joypy pywaffle statsmodels squarify calmap sklearn
