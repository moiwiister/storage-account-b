terraform {
    cloud {
        organization = "ALEXANDREDEBARGIS-training"

        workspaces {
            name = "storage-account-b"
        }
    }
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 3.71.0"
        }
    }
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"

  # Connection to Azure
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

module "storage-account-module" {
  source  = "app.terraform.io/ALEXANDREDEBARGIS-training/storage-account-module/azurerm"
  version = "1.0.0"
  # insert required variables here

  stg_name                    = var.stg_name
  rg_name                     = var.rg_name
  location                 = var.location
  environment              = var.environment
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
  subscription_id = var.subscription_id
}