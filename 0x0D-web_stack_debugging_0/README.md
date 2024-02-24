## 0x0D. Web Stack Debugging #0

### Overview

This is the first debugging project in the Web Stack Debugging series. The goal is to get Apache running on a Docker container and ensure that it returns a page containing "Hello Holberton" when queried at the root.

### Task Description

After starting the Docker container, a `curl` command to port 8080 mapped to the Docker container port 80 initially results in an error message:

```bash
curl: (52) Empty reply from server
```

The task is to connect to the container, identify and fix the issue, and ensure that subsequent `curl` commands return the expected "Hello Holberton" page.

### Solution

To fix the issue, connect to the Docker container and perform the necessary steps. Here's a sample script that resolves the problem:

```bash
#!/usr/bin/env bash
# Start Apache service in Docker container
service apache2 start

# Debugging steps to identify and fix the issue
# (Commands to identify and fix the issue go here)

# Commands to verify and ensure Apache is running and configured correctly
# (Verification commands go here)

# Optional: Additional debugging steps if needed
# (Additional debugging commands go here)
```

Ensure that this script is executable and can be run inside the Docker container. The specific commands for debugging and fixing the issue will depend on the actual problems identified in the container.

### Instructions for Testing

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/alx-system_engineering-devops.git
   ```

2. Navigate to the project directory:

   ```bash
   cd alx-system_engineering-devops/0x0D-web_stack_debugging_0
   ```

3. Execute the script:

   ```bash
   ./0-give_me_a_page
   ```

   This script should start Apache, fix the issue, and ensure that subsequent `curl` commands return the expected page.

### Author

Emmanuel Paul
Email: emmanuel.paul75@yahoo.com
