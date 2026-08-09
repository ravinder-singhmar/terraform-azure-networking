# Terraform Azure Network Infrastructure

Reusable and modular Terraform project for deploying Azure networking infrastructure across multiple environments.

## Environments

- Development
- Test
- Pre-Production
- Production

## Architecture

```text
Resource Group
      ↓
Virtual Network
      ↓
App Subnet + DB Subnet
````

## Network Addressing

| Environment | VNet         | App Subnet   | DB Subnet    |
| ----------- | ------------ | ------------ | ------------ |
| Dev         | 10.10.0.0/16 | 10.10.0.0/24 | 10.10.1.0/24 |
| Preprod     | 10.20.0.0/16 | 10.20.0.0/24 | 10.20.1.0/24 |
| Prod        | 10.30.0.0/16 | 10.30.0.0/24 | 10.30.1.0/24 |
| Test        | 10.40.0.0/16 | 10.40.0.0/24 | 10.40.1.0/24 |

## Project Structure

```text
terraform-azure-networking/
├── environment/
│   ├── dev/
│   ├── test/
│   ├── preprod/
│   └── prod/
│
└── modules/
    ├── azurerm_resource_group/
    ├── azurerm_virtual_network/
    └── azurerm_subnet/
```

## Key Features

* Reusable Terraform modules
* Multi-environment support
* Environment-specific configuration
* Non-overlapping network CIDRs
* Application and Database subnet separation
* `for_each` based resource creation
* Implicit Terraform dependencies using module outputs
* No unnecessary `depends_on`

## Dependency Flow

```text
RG Module
   ↓
VNet Module
   ↓
Subnet Module
```

Terraform automatically determines the resource creation order through module references and outputs.

## Deployment

```bash
cd environment/dev

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

## Future Enhancements

* NSG
* Azure Bastion
* NAT Gateway
* Route Tables
* Private Endpoints
* VNet Peering
* Azure Firewall
* CI/CD Pipeline
* Terraform Security Scanning

```