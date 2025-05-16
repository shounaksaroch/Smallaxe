# Configure the Azure provider
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.2.0"
    }
  }

  required_version = ">= 1.11.3"
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  client_id     = "${{ secrets.APP_ID  }}"
  client_secret = "${{ secrets.APP_SECRET }}"
  tenant_id = "${{ vars.TENANT_ID }}"
}
