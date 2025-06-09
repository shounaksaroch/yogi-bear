terraform {
  backend "azurerm" {
    #Variable ARM_USE_OIDC is set to "true"
    #use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    #Variable ARM_USE_AZUREAD is set to "true" in 'IWEOFTEST' environment
    #use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    # Production tenant ID set manually here to avoid confusion with Test tenant ID
    #tenant_id            = "720b637a-655a-40cf-816a-f22f40755c2c"  # Can also be set via `ARM_TENANT_ID` environment variable.
    # Production client ID set manually here to avoid confusion with Test client ID
    #client_id            = "a7c35d02-5523-480f-8e2a-05116a52e0b9"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    #storage_account_name = "zzzzz"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    #container_name       = "yyyyy"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    #key                  = "xxxxx"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

