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
  ##tenant_id = "${{ vars.ARM_TENANT_ID }}"

  ## Commented out as variables are configured at the repo level
  ##  client_id     = "${{ secrets.APP_ID  }}"
  ##client_secret = "${{ secrets.APP_SECRET }}"
}
