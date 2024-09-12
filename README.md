# Vimlendu27-terraform_azurerm_key_vault
Azure Key Vault Creation using Terraform This repository provides Terraform scripts to automate the deployment of Azure Key Vaults. The infrastructure as code (IaC) approach simplifies and standardizes the provisioning of Key Vaults, ensuring consistent and repeatable setups across different environments.

Features:


Automated Deployment: Use Terraform to provision Azure Key Vaults with minimal manual intervention.
Secure Secrets Management: Configure access policies to securely manage secrets, keys, and certificates.
Configurable Settings: Easily customize Key Vault attributes such as SKU, soft delete, purge protection, and access policies.
Role-based Access Control (RBAC): Define role assignments and access policies for applications and users.
Integration Ready: Seamlessly integrate with other Azure resources such as Virtual Machines, Azure Functions, and more.

Prerequisites:

Terraform (v1.x+)
Azure CLI
Azure Subscription
How to Use:
Clone the repository.
Customize the variables.tf file with your Azure subscription and desired Key Vault settings.
Initialize Terraform:
terraform init
Apply the configuration:
terraform apply


Structure:

main.tf: Core configuration for Key Vault creation.

variables.tf: Configurable parameters for the Key Vault deployment.

outputs.tf: Outputs such as Key Vault ID and URI.

providers.tf: Azure provider configurations.


License:


This repository is licensed under MIT License.


vimlendu