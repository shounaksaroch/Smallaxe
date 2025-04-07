# Configure Terraform
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 3.2.0"
    }
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = var.entra_tenant_id
  #tenant_id = "570c8a00-bc2e-466a-918b-a6e4e6326c02"
}
