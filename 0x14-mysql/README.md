**Project: 0x14-mysql**

**Description:**

This project focuses on MySQL setup, configuration, and management tasks as part of DevOps and SysAdmin responsibilities. The tasks include installing MySQL, setting up users and permissions, creating databases and tables, configuring primary-replica infrastructure, and implementing a robust database backup strategy.

**Tasks:**

1. **Install MySQL**
   - Install MySQL 5.7.x on web-01 and web-02 servers.
   - Ensure SSH access is set up as per Task #3 of the SSH project.

2. **Let us in!**
   - Create a MySQL user named `holberton_user` with appropriate permissions on both web-01 and web-02.

3. **If only you could see what I've seen with your eyes**
   - Create a database named `tyrell_corp` on web-01.
   - Create a table named `nexus6` within the `tyrell_corp` database with at least one entry.
   - Grant `SELECT` permissions on the `nexus6` table to the `holberton_user`.

4. **Quite an experience to live in fear, isn't it?**
   - Create a new user named `replica_user` on web-01 with appropriate permissions for replication.
   - Ensure `holberton_user` has `SELECT` privileges on the `mysql.user` table.

5. **Setup a Primary-Replica infrastructure using MySQL**
   - Configure MySQL primary on web-01 and replica on web-02.
   - Setup replication for the `tyrell_corp` database.
   - Provide configuration files for primary and replica servers.

6. **MySQL backup**
   - Write a Bash script to generate a MySQL dump and compress it into a tar.gz archive.
   - The dump must contain all databases, named `backup.sql`.
   - The archive must have the format: `day-month-year.tar.gz`.
   - Script should accept the MySQL root password as an argument.

**Requirements:**

- Use allowed editors: `vi`, `vim`, `emacs`.
- All files should end with a new line.
- Ensure proper permissions and that Bash scripts are executable.
- Pass Shellcheck without errors.
- Use `#!/usr/bin/env bash` as the first line in Bash scripts.
- Create a README.md file explaining the project and its tasks.
- Push the README.md file to GitHub.

**Resources:**

- Research on primary-replica clusters, MySQL replication setup, and database backup strategies.
- MySQL documentation.
- Bash scripting guides.

**Copyright - Plagiarism:**

- Strictly avoid plagiarism and come up with original solutions for the tasks.
- Do not publish any content related to this project.

**GitHub Repository:**

- Repository: [alx-system_engineering-devops](https://github.com/emmanuelist/alx-system_engineering-devops)
- Directory: 0x14-mysql

---
By adhering to these guidelines, you'll successfully complete the project, demonstrate your understanding of MySQL setup and management, and contribute to a robust DevOps and SysAdmin workflow.