# puppet_install_nginx_web_server.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "# Custom Nginx configuration\n
              server {\n
                listen 80;\n
                server_name _;\n
                root /var/www/html;\n
                index index.html;\n\n
                location / {\n
                  return 200 'Hello World!';\n
                }\n\n
                location /redirect_me {\n
                  return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;\n
                }\n
              }\n",
}

# Enable the default site
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}

# Restart Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
