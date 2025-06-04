data "azuread_client_config" "current" {}

data "azuread_groups" "ENTRA_BRKGLASS_UG" {
  security_enabled = true
  display_names    = ["azure_ad_breakglass_usergroup"]
}

data "azuread_groups" "terraform_excl_user_groups" {
  security_enabled = true
  display_names    = ["entra_another_exclusiongroup_ex-ug00", "entra_another_exclusiongroup_ex-ug01"]
}

data "azuread_groups" "ENTRAID_EXCLUSION_USERGROUP_MASTERLIST" {
  security_enabled    = true
  display_name_prefix = "ENTRAID_EXCLUSION_USERGROUP_"
}
