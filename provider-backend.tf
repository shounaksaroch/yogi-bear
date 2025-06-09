terraform {
  #####
  ## We have configured the backend in our PROD subscription (GDNA@Test) so using AzureKeys to make life easier. This is not the recommended method
  backend "azurerm" {
    ## NOT CONFIGURING NOTHING HERE BECAUSE WE GET THE ERROR 'Variables may not be used here.'
    ## INSTEAD .. WE CONFIGURE IT IN THE GHA-WORKFLOW FILE
    #resource_group_name  = secrets.RESOURCE_GROUP
    #storage_account_name = secrets.STORAGE_ACCOUNT
    #container_name       = secrets.CONTAINER_NAME
    #key                  = "sashakt.terraform.tfstate"
    #ARM_ACCESS_KEY=secrets.ARM_ACCESS_KEY
    ###storage_account_name = "tfstate076"
    ###container_name       = "tfstate"
    ###resource_group_name  = "rg-tfstate"
    ###key                  = "new-test.terraform.tfstate"
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
}
