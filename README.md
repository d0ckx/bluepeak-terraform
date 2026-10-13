# BluePeak Terraform Azure Infrastructure

Hands-on Terraform project for deploying and managing Azure infrastructure using reusable modules, remote state, multiple environments, and GitHub Actions CI.

The project was built as a practical extension of Azure infrastructure administration work, with a focus on Terraform workflows used in real environments.

## Architecture

The Terraform configuration deploys:

- Azure Resource Group
- Virtual Network
- Management subnet
- Application subnet
- Data subnet
- Network Security Group
- HTTPS security rule
- NSG association with the application subnet

The project currently contains separate Dev and Prod environments.

## Repository Structure

```text
bluepeak-terraform/
├── .github/
│   └── workflows/
│       └── terraform-validate.yml
│
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── provider.tf
│   │   ├── versions.tf
│   │   ├── moved.tf
│   │   └── terraform.tfvars.example
│   │
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── provider.tf
│       ├── versions.tf
│       └── terraform.tfvars.example
│
└── modules/
    ├── network/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── nsg/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
