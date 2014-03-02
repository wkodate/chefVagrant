default['apache']['install_user'] = "root"
default['apache']['install_group'] = "root"

default['apache']['dir'] = "/etc/httpd/"

default['apache']['include_files']  = [
  "httpd-mpm",
  "httpd-vhosts",
  "httpd-ssl"
]

### Section 1: Global Environment
## Version
default['apache']['version'] = "httpd-2.4.7"

## ServerRoot
default['apache']['server_root'] = "/etc/httpd"

## PidFile
default['apache']['pid_file'] = "run/httpd.pid"

## Timeout
default['apache']['timeout'] = 60

## KeepAlive
default['apache']['keep_alive'] = "Off"

## MaxKeepAliveRequests
default['apache']['max_keep_alive_requests'] = 100

## KeepAliveTimeout
default['apache']['keep_alive_timeout'] = 15

## Prefork
# StartServers
default['apache']['prefork']['start_servers'] = 8
# MinSpareServers
default['apache']['prefork']['min_spare_servers'] = 5
# MaxSpareServers
default['apache']['prefork']['max_spare_servers'] = 10
# ServerLimit
default['apache']['prefork']['server_limit'] = 256
# MaxClients
default['apache']['prefork']['max_clients'] = 256
# MaxRequestsPerChild
default['apache']['prefork']['max_requests_per_child'] = 4000

## Worker
# StartServers
default['apache']['worker']['start_servers'] = 4
# MaxClients
default['apache']['worker']['max_clients'] = 300
# MinSpareThreads
default['apache']['worker']['min_spare_threads'] = 25
# MaxSpareThread
default['apache']['worker']['max_spare_threads'] = 75
# ThreadPerChild
default['apache']['worker']['threads_per_child'] = 25
# MaxRequestsPerChild
default['apache']['worker']['max_requests_per_child'] = 0

## Listen
default['apache']['port'] = 80

## User
default['apache']['user'] = "apache"

## Group
default['apache']['group'] = "apache"


### Section 2: 'Main' server configuration
# ServerAdmin
default['apache']['server_admin'] = "root@localhost"

# ServerName
#default['apache']['server_name']   = "www.example.com:80"

# DocumentRoot
default['apache']['document_root'] = "/var/www/html"

# DirectoryIndex
default['apache']['directory_index'] = "index.html index.html.var"

# ErrorLog
default['apache']['error_log']  = "logs/error_log"

# LogLevel
default['apache']['log_level']  = "warn"

# AccessLog
default['apache']['access_log'] = "logs/access_log"

# wwwDirectory
default['apache']['www_dir'] = "/var/www/"


### Section 3: Virtual Hosts
## NameVirtualHost
default['apache']['name_virtual_host'] = "*:80"
## NameVirtualHost
default['apache']['virtual_host']['server_admin'] = "webmaster@dummy-host.example.com"
default['apache']['virtual_host']['documnet_root'] = "/www/docs/dummy-host.example.com"
default['apache']['virtual_host']['server_name'] = "dummy-host.example.com"
default['apache']['virtual_host']['error_log'] = "logs/dummy-host.example.com-error_log"
default['apache']['virtual_host']['custom_log'] = "logs/dummy-host.example.com-access_log common"
