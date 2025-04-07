resource "azuread_group" "example" {
  display_name     = "example"
  owners           = ""
  security_enabled = true
}
