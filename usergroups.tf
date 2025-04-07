resource "azuread_group" "example" {
  display_name     = "example"
  owners           = "shounak.saroch@ikead2.com"
  security_enabled = true
}
