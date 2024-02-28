# Setup New Ubuntu server with nginx
# and add a custom HTTP header

# Update the system
exec { 'update system':
  command => '/usr/bin/apt-get update',
}

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Create an index.html file
file { '/var/www/html/index.html':
  content => 'Hello World!',
}

# Add a redirection rule in Nginx configuration
exec { 'redirect_me':
  command  => 'sed -i "24i\	rewrite ^https://www.linkedin.com/in/emmanuel-paul-391089225 permanent;" /etc/nginx/sites-available/default',
  provider => 'shell',
}

# Add a custom HTTP header in Nginx configuration
exec { 'HTTP header':
  command  => 'sed -i "25i\	add_header X-Served-By \$hostname;" /etc/nginx/sites-available/default',
  provider => 'shell',
}

# Create a separate custom header file
file { '/etc/nginx/conf.d/custom_headers.conf':
  ensure  => present,
  content => "add_header X-Served-By $hostname;",
  notify  => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => [Package['nginx'], File['/etc/nginx/conf.d/custom_headers.conf']],
}
