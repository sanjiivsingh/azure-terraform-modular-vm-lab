# Azure Terraform Modular VM Lab

This repository demonstrates how to provision a complete Azure infrastructure using Terraform with a modular, folder-based approach. Each component is maintained independently and can be deployed separately for learning and testing purposes.

## Architecture Overview

The lab creates:

* Resource Group
* Virtual Networks (VNet1 and VNet2)
* Subnets
* Network Security Groups (NSGs)
* NSG Rules
* NSG Associations
* Public IP Addresses
* Network Interfaces (NICs)
* Linux Virtual Machines
* Windows Virtual Machine
* VNet Peering

### Network Design

#### VNet1 (10.18.0.0/16)

* Frontend Subnet (10.18.1.0/24)

  * Linux VM
  * Public IP
  * SSH (22)
  * HTTP (80)

* Backend Subnet (10.18.2.0/24)

  * Linux VM
  * Private Access

#### VNet2 (10.20.0.0/16)

* App Subnet (10.20.1.0/24)

  * Windows VM
  * Public IP
  * RDP (3389)
  * HTTP (80)

#### Connectivity

* Bidirectional VNet Peering between VNet1 and VNet2
* Private IP communication between virtual machines across VNets

---

## Repository Structure

```text
azurerm_resource_group
azurerm_virtual_network
azurerm_vnet_peering
azurerm_subnet
azurerm_nsg
azurerm_network_security_rule
azurerm_nsg_association
azurerm_public_ip
azurerm_nic
azurerm_virtual_machine
```

Each folder contains:

* provider.tf
* variables.tf
* terraform.tfvars
* main.tf
* independent Terraform state

---

## Prerequisites

* Azure Subscription
* Terraform >= 1.5
* Azure CLI
* Visual Studio Code (optional)

Login to Azure:

```bash
az login
```

Verify active subscription:

```bash
az account show
```

---

## Deployment Order

Apply the modules in the following sequence:

```text
1. azurerm_resource_group
2. azurerm_virtual_network
3. azurerm_vnet_peering
4. azurerm_subnet
5. azurerm_nsg
6. azurerm_network_security_rule
7. azurerm_nsg_association
8. azurerm_public_ip
9. azurerm_nic
10. azurerm_virtual_machine
```

For each folder:

```bash
terraform init
terraform plan
terraform apply
```

---

## Verification

### Linux VM

```bash
ssh <username>@<public-ip>
```

### Windows VM

Connect using Remote Desktop:

```text
mstsc
```

Use the Windows VM public IP.

### VNet Peering Validation

From the Windows VM:

```powershell
ping <linux-private-ip>

Test-NetConnection <linux-private-ip> -Port 22
```

---

## Cleanup

Destroy resources in reverse order:

```bash
terraform destroy
```

or remove the resource group:

```bash
az group delete --name rg-dev-01 --yes --no-wait
```

---

## Learning Objectives

This lab helps understand:

* Terraform fundamentals
* Azure networking
* VNet peering
* NSG and security rules
* NIC and Public IP configuration
* Linux and Windows VM provisioning
* Infrastructure as Code (IaC)
* Modular Terraform design

---

## Disclaimer

This project is intended for learning and demonstration purposes. Review resource sizing, credentials, and security settings before using in production environments.
