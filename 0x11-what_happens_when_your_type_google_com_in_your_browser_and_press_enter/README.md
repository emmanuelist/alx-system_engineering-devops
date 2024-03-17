# What Happens When You Type google.com in Your Browser and Press Enter

## Background Context
Being a Full-Stack Software Engineer means you’re comfortable interacting with any layer of the stack. A way to easily assess this is to simply ask an engineer to explain how a software system works. They can have a general overview of the flow or can choose to dig deep in a certain area. Let’s practice by exploring the infrastructure side (network, servers, security…) of the question.

## Introduction
This question is a classic and still widely used interview question for many types of software engineering positions. It is used to assess a candidate’s general knowledge of how the web stack works on top of the internet. One important guideline to begin answering this question is that you should ask your interviewer whether they would like you to focus on one specific area of the workflow. For a front-end position, they may want you to talk at length about how the DOM is rendering. For an SRE position, they may want you to go into the load balancing mechanism.

## Explanation
When you type https://www.google.com into your browser and press Enter, several steps occur in the background:

1. **DNS Request**: The browser sends a DNS (Domain Name System) request to translate the human-readable domain name "www.google.com" into an IP address.

2. **TCP/IP**: Once the IP address is obtained, the browser establishes a TCP (Transmission Control Protocol) connection with the server using the obtained IP address and the HTTPS port (typically port 443).

3. **Firewall**: The request may pass through any firewalls configured on the client's network or the server's network, which filter incoming and outgoing traffic based on predefined security rules.

4. **HTTPS/SSL**: The communication between the browser and the server is encrypted using HTTPS (Hypertext Transfer Protocol Secure) with SSL (Secure Sockets Layer) or TLS (Transport Layer Security).

5. **Load-Balancer**: To handle the immense traffic directed towards popular websites like Google, load balancers distribute incoming requests across multiple servers to optimize resource utilization and enhance reliability.

6. **Web Server**: The HTTPS request is received and processed by the web server, which retrieves the requested web page and any associated resources from the server's file system or cache.

7. **Application Server**: For dynamic web applications, the web server may delegate certain tasks to an application server, which executes server-side scripts, interacts with databases, and generates dynamic content based on user requests.

8. **Database**: The application server communicates with the database server to perform CRUD (Create, Read, Update, Delete) operations, enabling the web application to deliver personalized and up-to-date content to users.

## Conclusion
From the initial DNS resolution to the final database query, the journey of a web request is a testament to the intricate orchestration of various components within the web stack. Understanding this journey not only enhances our appreciation for the marvels of modern technology but also equips us with the knowledge to optimize and troubleshoot web applications effectively.

## Manual QA Review
It is your responsibility to request a review for your blog from a peer before the project’s deadline. If no peers have been reviewed, you should request a review from a TA or staff member.

## Contributing
Folks on the Internet have been trying to put together a comprehensive answer to the question. Help them by submitting a pull request. [Contribute here](https://github.com/alex/what-happens-when#the-g-key-is-pressed).

## Blog Post
Read the full blog post on Medium: [What Happens When You Type google.com in Your Browser and Press Enter](https://medium.com/@emmanuelpaul152/what-happens-when-you-type-https-www-google-com-in-your-browser-and-press-enter-0598744768ab)

## Diagram
View the diagram illustrating the flow of the request: [What Happens When Diagram](https://example.com/diagram.png)

