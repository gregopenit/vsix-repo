FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*
# Get extension
ADD https://open-vsx.org/api/ms-python/python/2021.11.1422169775/file/ms-python.python-2021.11.1422169775.vsix .
ADD https://open-vsx.org/api/ms-toolsai/jupyter/2021.11.100/file/ms-toolsai.jupyter-2021.11.100.vsix .
ADD https://open-vsx.org/api/KevinRose/vsc-python-indent/1.14.2/file/KevinRose.vsc-python-indent-1.14.2.vsix .
ADD https://open-vsx.org/api/PKief/material-icon-theme/4.11.0/file/PKief.material-icon-theme-4.11.0.vsix .
ADD https://open-vsx.org/api/eamodio/gitlens/11.7.0/file/eamodio.gitlens-11.7.0.vsix .
ADD https://open-vsx.org/api/njpwerner/autodocstring/0.5.4/file/njpwerner.autodocstring-0.5.4.vsix .
COPY ./vscode-pylance-2021.11.2_vsixhub.com.vsix . 

COPY ./default.conf /etc/nginx/conf.d/


