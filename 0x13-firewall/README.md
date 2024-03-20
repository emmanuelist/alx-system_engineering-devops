# Web Stack Firewall Configuration

This repository contains solutions for configuring firewalls on web servers, particularly using `ufw` (Uncomplicated Firewall), and implementing port forwarding. These configurations enhance security and manage network traffic efficiently.

## Table of Contents
1. [Introduction](#introduction)
2. [Tasks](#tasks)
    - [Block All Incoming Traffic](#block-all-incoming-traffic)
    - [Port Forwarding](#port-forwarding)
3. [Usage](#usage)
4. [Resources](#resources)
5. [Contributing](#contributing)
6. [License](#license)

## Introduction

In this project, we focus on securing web servers by setting up firewall rules using `ufw` and enabling port forwarding. Understanding firewall configurations is essential for maintaining server security and managing incoming traffic effectively.

## Tasks

### Block All Incoming Traffic

To enhance security, we use `ufw` to block all incoming traffic except for specific TCP ports. The required ports to remain open are:
- Port 22 (SSH)
- Port 443 (HTTPS SSL)
- Port 80 (HTTP)

### Port Forwarding

Port forwarding enables redirecting incoming requests from one port to another, facilitating access to services hosted on a server. In this task, we configure port forwarding to redirect requests from port 8080/TCP to port 80/TCP.

## Usage

### Block All Incoming Traffic

To implement firewall rules and block all incoming traffic except for the specified TCP ports, follow these steps:

1. Connect to the target server (web-01, web-02, or lb-01).
2. Install `ufw` if not already installed:
    ```
    sudo apt-get update
    sudo apt-get install ufw
    ```
3. Configure `ufw` to block incoming traffic:
    ```
    sudo ufw default deny incoming
    ```
4. Allow incoming traffic on specific ports:
    ```
    sudo ufw allow 22/tcp
    sudo ufw allow 443/tcp
    sudo ufw allow 80/tcp
    ```
5. Enable `ufw`:
    ```
    sudo ufw enable
    ```

### Port Forwarding

To set up port forwarding and redirect requests from port 8080/TCP to port 80/TCP, follow these steps:

1. Modify the `ufw` configuration file to add port forwarding rules:
    ```
    sudo nano /etc/ufw/before.rules
    ```
2. Add the following lines to the file:
    ```
    *nat
    :PREROUTING ACCEPT [0:0]
    -A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
    COMMIT
    ```
3. Save and close the file.
4. Restart `ufw`:
    ```
    sudo ufw reload
    ```

## Resources

- [What is a Firewall](https://en.wikipedia.org/wiki/Firewall_%28computing%29)
- [Web Stack Debugging Guide](https://intranet.alxswe.com/concepts/68)

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or additional insights, feel free to open an issue or create a pull request.

## License

This project is licensed under the [MIT License](#).
