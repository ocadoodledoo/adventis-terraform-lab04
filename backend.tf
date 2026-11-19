terraform {
  backend "azurerm" {
    resource_group_name  = "rg-adventis-tfstate"
    storage_account_name = "stadvterraform04"
    container_name       = "tfstate"
    key                  = "lab04.tfstate"

    use_azuread_auth = true
    use_cli          = true
  }
}