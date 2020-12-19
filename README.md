# Home Servers

# NOTE: Recipes may appear as standalone .rb files but will be added to a cookbook in the future.

### Description
This repo contains Chef recipes and terraform files for the provisioning, configuration, and deployment of a simple web server setup.

The initial implementation of this setup will be in a local environment, setting up the servers in a virtual environment.  Once I have verified that the Chef recipes are working as intended, I will begin working on the Terraform files to provision the hosts to GCP 

This will include two Linux web servers, a single Linux load balancer, and a Linux server configured as a firewall using iptables.

#### Future
I may include Chef recipes and Terraform files for redundant database servers.


## Tools and technologies used
#### Coding environment
##### Hardware
- Late 2018 MacBook Pro
    - 32GB RAM
    - 6 Core Intel i9 processor
    - 1TB SSD

##### Software
- Microsoft VSCode
- Kite
- Oracle VirtualBox
    - Ubuntu 20.04.1 Server

##### Languages
- Bash
- Ruby
- Hashicorp Configuration Language (hcl)


##### Software
- Chef
    - ChefDK version: 4.11.0
    - Chef Infra Client version: 15.14.0
    - Chef InSpec version: 4.22.22
    - Test Kitchen version: 2.7.0
    - Foodcritic version: 16.3.0
    - Cookstyle version: 5.23.0

- Terraform


##### Github repo
- https://github.com/rspishock/Sample-Web-Server


## Recipes
WIP
### Server (web)
### myhaproxy
### Server (database)
### Firewall (Ubuntu server using iptables)

## Scripts
### Bash
#### firewall.sh
A Bash script to configure the main iptables firewall ruleset for the network.