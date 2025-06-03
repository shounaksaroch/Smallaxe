data "azuread_client_config" "current" {}

data "azuread_user" "da-shounak" {
  user_principal_name = "da-shounak.saroch@iweoftest.onmicrosoft.com"
}
