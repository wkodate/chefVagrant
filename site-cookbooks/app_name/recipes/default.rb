#
# Cookbook Name:: php-env
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# iptables
service "iptables" do
    action [:stop, :disable]
end
 
# install php mysql 
%w{php php-common php-mbstring php-xml php-devel php-process php-cli php-pear php-mysql mysql-server}.each do |p|
    package p do
        action :install
    end
end
 
# install apache
package "httpd" do
    action :install
end
 
# launch apache
service "httpd" do
    action [:start, :enable]
end
 
template "/var/www/html/index.html" do
    source "index.html.erb"
    mode 0644
end
