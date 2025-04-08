data "azuread_client_config" "current" {}

resource "azuread_group" "tried-it-out" {
  display_name     = "example-try-out"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}
