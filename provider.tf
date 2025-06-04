# Configure Terraform
terraform {
    #####
    ## We have configured the backend in our PROD subscription (GDNA@Test) so using AzureKeys to make life easier. This is not the recommended method
    backend "azurerm" {
    #access_key           = "abcdefghijklmnopqrstuvwxyz0123456789..."  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    # Will be passed in GITHUB workflow
    #storage_account_name = "abcd1234"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    #container_name       = "tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    #key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
            ###backend "azurerm" {
            ###  #use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
            ###  #use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
            ###  #tenant_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_TENANT_ID` environment variable.
            ###  #client_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_CLIENT_ID` environment variable.
            ###  storage_account_name = "abcd1234"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
            ###  container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
            ###  key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
            ###}
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
