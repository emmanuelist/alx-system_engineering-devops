Here's a README.md file following the markdown standard styling based on the provided project description:

---

# 0x18. Webstack Monitoring

## Description

In this project, you will implement monitoring tools to measure what is happening on your servers. Monitoring is essential in the tech industry because you cannot fix or improve what you cannot measure. This project covers the use of Datadog to monitor server and application performance.

## Learning Objectives

By the end of this project, you should be able to explain:

- Why monitoring is needed.
- The two main areas of monitoring.
- Access logs for a web server (such as Nginx).
- Error logs for a web server (such as Nginx).

## Requirements

- **Editors**: vi, vim, emacs
- **Operating System**: Ubuntu 16.04 LTS
- **Scripts**: All Bash script files must be executable, pass Shellcheck (version 0.3.7) without errors, and start with `#!/usr/bin/env bash` as the first line.
- **File Formatting**: All files should end with a new line.
- **Documentation**: A `README.md` file is mandatory at the root of the project directory.
- **Server Details**:
    - Name: 183438-web-01, 183438-web-02, 183438-lb-01
    - Username: `ubuntu`
    - State: `running`

## Tasks

### 0. Sign up for Datadog and install datadog-agent

- Sign up for a free Datadog account at [https://www.datadoghq.com/](https://www.datadoghq.com/) using the US website.
- Install the Datadog agent on `web-01`.
- Create an application key.
- Add your DataDog API key and application key to your intranet user profile.
- Verify that the server `web-01` is visible in Datadog under the host name `XX-web-01`.
- If needed, update the hostname of your server.

Repository: `alx-system_engineering-devops`  
Directory: `0x18-webstack_monitoring`

### 1. Monitor some metrics

- Set up monitors in the Datadog dashboard to track:
    - The number of read requests issued to the device per second.
    - The number of write requests issued to the device per second.

Repository: `alx-system_engineering-devops`  
Directory: `0x18-webstack_monitoring`

### 2. Create a dashboard

- Create a new dashboard in Datadog with different metrics displayed.
- Add at least 4 widgets of any type to the dashboard.
- Save the dashboard ID in the file `2-setup_datadog`.

Repository: `alx-system_engineering-devops`  
Directory: `0x18-webstack_monitoring`  
File: `2-setup_datadog`

---

Copyright © 2024 ALX, All rights reserved.

---
