# Project: HTTPS SSL Configuration and HAProxy Setup

## Overview
This project focuses on securing website traffic using HTTPS SSL encryption and configuring HAProxy for SSL termination. The tasks involve configuring domain zones, setting up SSL termination on HAProxy, and enforcing HTTPS traffic.

## Background Context
In today's digital landscape, ensuring the security and privacy of website traffic is paramount. HTTPS SSL encryption plays a vital role in securing data transmitted between clients and servers over the internet. HAProxy, a reliable load balancer and proxy server, can be configured for SSL termination to handle encrypted traffic efficiently.

## Tasks

### Task 0: World Wide Web
This task involves configuring domain zones to point to specific servers and creating a Bash script to display information about subdomains.

### Task 1: HAProxy SSL Termination
In this task, HAProxy is configured to accept encrypted traffic (SSL termination) for the subdomain www. A certificate is generated using certbot, and HAProxy is set up to serve encrypted traffic.

### Task 2: No Loophole in Your Website Traffic (Advanced)
This advanced task focuses on redirecting HTTP traffic to HTTPS transparently. HAProxy is configured to automatically redirect HTTP traffic to HTTPS, ensuring all traffic is encrypted.

## Learning Objectives
Upon completing this project, you will gain an understanding of:
- HTTPS SSL encryption and its importance in securing web traffic.
- HAProxy configuration for SSL termination and traffic redirection.
- Bash scripting for automating tasks related to domain configuration.

## Quiz Questions
1. What are the two main roles of HTTPS SSL?
2. What is SSL termination, and why is it important in load balancing and proxy servers?
3. How can you enforce HTTPS traffic using HAProxy?

## Repository Structure
- **0x10-https_ssl/**
  - **0-world_wide_web**: Bash script for configuring domain zones and displaying subdomain information.
  - **1-haproxy_ssl_termination**: HAProxy configuration file for SSL termination.
  - **100-redirect_http_to_https**: HAProxy configuration file for redirecting HTTP traffic to HTTPS.
  - **README.md**: This file, providing project overview, tasks, learning objectives, and other relevant information.

## Usage
1. Clone the repository: `git clone <repository_url>`
2. Navigate to the appropriate directory: `cd 0x10-https_ssl`
3. Execute the Bash scripts as needed.
4. Refer to individual task files for specific instructions and configurations.

## Dependencies
- Ubuntu 16.04 LTS
- HAProxy 1.5 or higher
- Certbot (for SSL certificate generation)

## References
- [What is HTTPS?](https://www.cloudflare.com/learning/ssl/what-is-https/)
- [HAProxy Documentation](https://www.haproxy.org/documentation/)
- [SSL Termination with HAProxy](https://serversforhackers.com/c/ssl-termination)
- [Bash Scripting Tutorial](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

## Contributors
- Emmanuel Paul


## License
This project is licensed under the [MIT License](LICENSE).

