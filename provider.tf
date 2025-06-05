# Configure Terraform
terraform {
  #####
  # Moved backend config to provider-backend.tf
  #####
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 3.4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.31.0"
    }
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
}

# All configuration(where possible) is done via GIT repo variables/secrets
## ARM_CLIENT_ID      - secret
## ARM_CLIENT_SECRET  - secret
## ARM_ACCESS_KEY     - secret
## ARM_TENANT_ID      - variable
## ARM_SUBSCRIPTION_ID  - variable
## ARM_USE_OIDC       - variable
## ARM_USE_AZUREAD    - variable
