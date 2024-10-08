# fix nginx to accept and serve more requests
# in the web server using puppet

exec { 'modify max limit in web server setting':
    # Modify the ULIMIT value
    command => 'sed -i "s/15/4096/" /etc/default/nginx',
    # Specify the path for the sed command
    path    => '/usr/local/bin/:/bin/',
}

# Restart Nginx
exec { 'nginx-restart':
  # Restart Nginx service
    command => '/etc/init.d/nginx restart',
  # Specify the path for the init.d script
    path    => '/etc/init.d/',
}
