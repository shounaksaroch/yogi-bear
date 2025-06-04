resource "azuread_group" "farsk-user-group-ug02" {
  display_name     = "farsk-user-group-ug02"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

resource "azuread_group" "farsk-user-group-ug03" {
  display_name     = "farsk-user-group-ug03"
  owners           = [data.azuread_user.da-shounak.object_id]
  members          = [data.azuread_user.da-shounak.object_id]
  security_enabled = true
}
