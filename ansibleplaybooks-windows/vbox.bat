@echo off
mkdir vagrant
cd vagrant
vagrant init bento/ubuntu-20.04
set http_proxy=http://192.168.1.253:3128
set https_proxy=http://192.168.1.253:3128
#vagrant plugin install vagrant-proxyconf
vagrant plugin install vagrant-vbguest
set VAGRANT_HTTP_PROXY=%http_proxy%
set VAGRANT_HTTPS_PROXY=%https_proxy%
set VAGRANT_NO_PROXY="127.0.0.1"
start vagrant up
