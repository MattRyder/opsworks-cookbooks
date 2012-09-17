nginx Mash.new unless attribute?("nginx")

case platform
when "debian","ubuntu"
  nginx[:dir]     = "/etc/nginx"
  nginx[:log_dir] = "/var/log/nginx"
  nginx[:user]    = "www-data"
  nginx[:binary]  = "/usr/sbin/nginx"
when "centos","redhat","amazon","scientific","fedora","oracle"
  nginx[:dir]     = "/etc/nginx"
  nginx[:log_dir] = "/var/log/nginx"
  nginx[:user]    = "nginx"
  nginx[:binary]  = "/usr/sbin/nginx"
else   
  nginx[:dir]     = "/etc/nginx"
  nginx[:log_dir] = "/var/log/nginx"
  nginx[:user]    = "www-data"
  nginx[:binary]  = "/usr/sbin/nginx"
end

default[:nginx][:gzip] = "on"
default[:nginx][:gzip_static] = "on"
default[:nginx][:gzip_vary] = "on"
default[:nginx][:gzip_disable] = "MSIE [1-6].(?!.*SV1)"
default[:nginx][:gzip_http_version] = "1.0"
default[:nginx][:gzip_comp_level] = "2"
default[:nginx][:gzip_proxied] = "any"
default[:nginx][:gzip_types] = [ "text/plain", "text/html", "text/css", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript" ]

default[:nginx][:keepalive] = "on"
default[:nginx][:keepalive_timeout] = 65

default[:nginx][:worker_processes] = 10
default[:nginx][:worker_connections] = 1024
default[:nginx][:server_names_hash_bucket_size] = 64
