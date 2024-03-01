# 0x0E. Web stack debugging #1

## Overview

This project involves debugging issues related to a web server setup on an Ubuntu 20.04 LTS container. The primary focus is on resolving problems related to Nginx not listening on port 80.

### Concepts Covered

- Network basics
- Web stack debugging

## Project Details

### Task 0: [Nginx likes port 80](./0-nginx_likes_port_80) 

**Objective:** Identify and fix the issue preventing Nginx from listening on port 80. Write a Bash script to automate the solution.

#### Requirements:

- Nginx must be running and listening on port 80 for all the server's active IPv4 IPs.
- Bash script should configure the server to meet the above requirements.

**Usage:**
```bash
root@966c5664b21f:/# ./0-nginx_likes_port_80 > /dev/null 2&>1
root@966c5664b21f:/# curl 0:80
# Output should show the Nginx welcome page
```

### Task 1: [Make it sweet and short](./1-debugging_made_short)

**Objective:** Improve the Bash script from Task 0, making it concise and efficient.

#### Requirements:

- Bash script must be 5 lines or less.
- No use of `;`, `&&`, or `wget`.
- Service (init) must report that Nginx is not running.

**Usage:**
```bash
root@966c5664b21f:/# ./1-debugging_made_short
root@966c5664b21f:/# curl 0:80
# Output should show the Nginx welcome page
root@966c5664b21f:/# service nginx status
# Output should indicate that nginx is not running
```

## Further Steps

1. **Read the README.md file:** This file provides an overview of the project, concepts covered, and details about the tasks.

2. **Check scripts in the repository:**
   - `0-nginx_likes_port_80`: Bash script for Task 0.
   - `1-debugging_made_short`: Bash script for Task 1.

3. **Run the scripts in a compatible environment:** Ensure that you are using an Ubuntu 20.04 LTS environment with the specified editors.

4. **Review the output:** Confirm that the scripts execute without errors and meet the specified requirements.

5. **Read the code:** Examine the Bash scripts to understand the debugging steps and improvements made in Task 1.

6. **Explore other concepts:** Consider exploring additional concepts related to web stack debugging and network basics to enhance your skills.

7. **Provide feedback:** If you have any feedback or suggestions for improvement, feel free to contribute to the GitHub repository.

**GitHub Repository:**
[alx-system_engineering-devops](https://github.com/emmanuelist/alx-system_engineering-devops)

**Directory:**
0x0E-web_stack_debugging_1

**Author:**
Emmanuel Paul

**Project Completion Date:**
Mar 1, 2024 6:00 AM
