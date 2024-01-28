# Web Infrastructure README

## Overview

This web infrastructure serves as the hosting environment for a website accessible via `www.foobar.com`. The setup lacks firewalls and SSL certificates for securing the server's network, and it involves shared resources such as CPU, RAM, and SSD among its components (database, application server).

## Infrastructure Details

### Server

A server, in either hardware or software form, provides services to other computers, commonly known as clients.

### Domain Name

A domain name serves as a user-friendly alias for an IP Address, enhancing recognition and memory. For example, `www.wikipedia.org` is easier to remember than `91.198.174.192`. The IP address and domain name alias are mapped in the Domain Name System (DNS).

### DNS Record for `www` in `www.foobar.com`

`www.foobar.com` utilizes an A record, confirmed by running `dig www.foobar.com`. Note: Results may vary, but the infrastructure in this design uses an A record. (Address Mapping record—also known as a DNS host record—stores a hostname and its corresponding IPv4 address.)

### Web Server

The web server, whether in software or hardware, receives requests via HTTP or secure HTTP (HTTPS) and responds with the content of the requested resource or an error message.

### Application Server

The application server installs, operates, and hosts applications and associated services, facilitating the hosting and delivery of high-end consumer or business applications.

### Database

The database maintains a well-organized collection of information that can be easily accessed, managed, and updated.

### Communication

Communication between the client and the server occurs over the internet network through the TCP/IP protocol suite.

## Infrastructure Challenges

### Single Points of Failure (SPOF)

The infrastructure has multiple SPOFs. For instance, if the MySQL database server is down, the entire site would be inaccessible.

### Downtime During Maintenance

Maintenance checks on any component require temporary shutdowns or turning off the server. With only one server, the website experiences downtime during maintenance.

### Scalability Challenges

Scaling the infrastructure is challenging due to its single-server configuration. The server may quickly exhaust resources or slow down when faced with a high volume of incoming requests.
