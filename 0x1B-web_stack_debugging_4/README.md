Here's a README.md file for the project. This file includes the general information about the project, its requirements, tasks, and instructions on how to run the Puppet manifests.

---

# Web Stack Debugging #4

This project focuses on debugging a web server stack featuring Nginx and configuring the system to improve its performance and stability under pressure. The project involves using ApacheBench to simulate HTTP requests to the server and implementing Puppet manifests to optimize the server configuration.

## Requirements

- All files will be interpreted on Ubuntu 14.04 LTS.
- Each file must end with a new line.
- A `README.md` file is required at the root of the project folder.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without error.
- Puppet manifests should start with a comment explaining the purpose of the manifest.
- Puppet manifest files must end with the extension `.pp`.
- Files will be checked with Puppet v3.4.

## Installation

To install `puppet-lint` version 2.1.1, run the following commands:

```bash
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```

## Tasks

### Task 0: Sky is the Limit

In this task, you need to debug the web server stack to handle 2000 requests without any failures. You will be using ApacheBench to simulate 2000 HTTP requests to the server.

1. Use ApacheBench to test the server with the following command:

    ```bash
    ab -c 100 -n 2000 localhost/
    ```

2. Analyze the server's performance and adjust the configuration as needed to ensure 0 failed requests.
3. Use `puppet apply` to run the provided Puppet manifest `0-the_sky_is_the_limit_not.pp`.

### Task 1: User Limit

This task requires you to adjust the OS configuration to allow the `holberton` user to log in and open files without encountering error messages.

1. Apply the Puppet manifest `1-user_limit.pp` using the following command:

    ```bash
    puppet apply 1-user_limit.pp
    ```

2. Verify that the `holberton` user can log in without any errors.

## Repository

- GitHub repository: [alx-system_engineering-devops](https://github.com/emmanuelist/alx-system_engineering-devops)
- Project directory: `0x1B-web_stack_debugging_4`

## References

For more information on this topic, you may refer to the following links:

- [Nginx Official Documentation](https://nginx.org/en/docs/)
- [Puppet Official Documentation](https://puppet.com/docs/puppet/7.0/puppet_index.html)
- [ApacheBench (ab) Documentation](https://httpd.apache.org/docs/2.4/programs/ab.html)

