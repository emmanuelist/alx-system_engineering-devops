# ALX System Engineering & DevOps - Project 0x0F Load Balancer

## Resources

#### Read or watch:

* [Introduction to load-balancing and HAproxy](https://intranet.alxswe.com/rltoken/B7f3oz8i3Xvvom_YQZzLnQ)
* [HTTP header](https://intranet.alxswe.com/rltoken/sZ9v3Vq2tgLwN_PWVQketw)
* [Debian/Ubuntu HAProxy packages](https://intranet.alxswe.com/rltoken/2VRAgtKKR9g6Xfb0xzGiSg)

## Table of Contents

- [Description](#description)
- [Requirements](#requirements)
- [Tasks](#tasks)
    - [0. Double the number of webservers](#0-double-the-number-of-webservers)
    - [1. Install your load balancer](#1-install-your-load-balancer)
    - [2. Add a custom HTTP header with Puppet](#2-add-a-custom-http-header-with-puppet)
- [Copyright](#copyright)

---

## Description

This project focuses on implementing a load balancer to enhance the redundancy and reliability of the web servers. Two additional servers, `web-02` and `lb-01`, are introduced to achieve this goal. The tasks involve configuring Nginx, installing and configuring HAproxy, and automating the process using Bash and Puppet scripts.

---

## Requirements

- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 16.04 LTS
- Files should end with a new line
- A mandatory README.md file at the root of the project folder
- All Bash scripts must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without errors
- First line of all Bash scripts: `#!/usr/bin/env bash`
- Second line of all Bash scripts: Comment explaining the script's purpose

---

## Tasks

### 0. Double the number of webservers

- Configure Nginx on `web-01` and `web-02`
- Add a custom HTTP response header (`X-Served-By`) indicating the server's hostname
- Write a Bash script (`0-custom_http_response_header`) to configure a new Ubuntu machine to meet the requirements

Example:

```bash
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
```

### 1. Install your load balancer

- Install and configure HAproxy on `lb-01`
- Configure HAproxy to distribute traffic to `web-01` and `web-02` using a round-robin algorithm
- Ensure HAproxy can be managed via an init script
- Write a Bash script to configure a new Ubuntu machine to meet the requirements

Example:

```bash
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```

### 2. Add a custom HTTP header with Puppet

- Use Puppet to automate the process of creating a custom HTTP header response (`X-Served-By`)
- Write a Puppet script (`2-puppet_custom_http_response_header.pp`) to configure a new Ubuntu machine to meet the requirements

---

## Copyright

Copyright © 2024 ALX, All rights reserved.

---

*This README.md file provides an overview of the project, including its description, requirements, tasks, and copyright information. Please refer to individual scripts and additional documentation for more detailed information.*