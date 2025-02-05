# Update the variables in the BACKEND block to refrence the
# storage account created out of band for TF statemanagement.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.9.0"
    }

  }

  backend "azurerm" {
    # resource_group_name  = "AKSLZ-TFSTATE-RG"   # Partial configuration, provided during "terraform init"
    # storage_account_name = "akslzpocsa01"   # Partial configuration, provided during "terraform init"
    # container_name       = "akstfstate"   # Partial configuration, provided during "terraform init"
    key                  = "aad"
  }

}

provider "azurerm" {
  features {}
}

provider "azuread" {
}