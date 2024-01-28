# Distributed Web Infrastructure README

## Description

This distributed web infrastructure aims to reduce traffic to the primary server by distributing the load to a replica server with the assistance of a load balancer responsible for balancing the load between the two servers (primary and replica).

## Specifics About This Infrastructure

+ Load Balancer Configuration and Distribution Algorithm<br/>
  The HAProxy load balancer is configured with the *Round Robin* distribution algorithm. *Round Robin* uses each server in turns, according to their weights, ensuring smooth and fair distribution of processing time. It's a dynamic algorithm allowing server weights to be adjusted on the go.

+ Load-Balancer-Enabled Setup<br/>
  The HAProxy load balancer enables an *Active-Passive* setup, prioritizing one active node over another. This differs from an *Active-Active* setup, where workloads are distributed across all nodes to prevent overloading. *Active-Passive* ensures not all nodes are active simultaneously, and the next passive node becomes active if the preceding one is inactive.

+ Database *Primary-Replica* (*Master-Slave*) Cluster<br/>
  In this setup, one server acts as the *Primary* server for read/write requests, while the other serves as a *Replica* handling read requests. Synchronization occurs when the *Primary* executes a write operation.

+ Role Difference Between *Primary* and *Replica* Nodes<br/>
  The *Primary* node manages all write operations, while the *Replica* node handles read operations, reducing read traffic to the *Primary* node.

## Issues With This Infrastructure

+ Single Points of Failure (SPOF)<br/>
  Multiple SPOFs exist, such as the Primary MySQL database server. If it's down, the entire site cannot make changes. The server with the load balancer and the application server connecting to the primary database server are also SPOFs.

+ Security Concerns<br/>
  Data transmitted over the network lacks encryption through an SSL certificate, exposing it to potential spying by hackers. Absence of firewalls on any server leaves no means to block unauthorized IPs.

+ Lack of Monitoring<br/>
  The absence of server monitoring tools makes it impossible to know the status of each server, leaving potential issues undetected.
