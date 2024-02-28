# Setup New Ubuntu server with nginx
# and add a custom HTTP header

exec { 'update system':
        command => '/usr/bin/apt-get update',
}

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Create custom HTTP header file
file { '/etc/nginx/conf.d/custom_headers.conf':
  ensure  => present,
  content => "add_header X-Served-By $hostname;",
  notify  => Service['nginx'],
}

# Ensure custom header file is included in Nginx configuration
file { '/etc/nginx/nginx.conf':
  ensure  => present,
  content => "include /etc/nginx/conf.d/*.conf;",
  notify  => Service['nginx'],
}
