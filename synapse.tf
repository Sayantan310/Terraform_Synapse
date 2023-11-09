# resource "azurerm_storage_data_lake_gen2_filesystem" "edwbat" {
#   name = s_.storage_data_lake_gen2_filesystem
#   storage_account_id = azurerm_storage_account.edwbat.id
# }

# data "azurerm_client_config" "current" {}

data "azurerm_storage_account" "edwtrn2" {
  name                = var.s_storageacc_name
  resource_group_name = var.s_ResourceGroupName
}

data "azurerm_key_vault" "edwtrn2kv" {
  name                = "enterprisedata-trn2-kv"
  resource_group_name = "eda-enterprisedata-trn2"
}

resource "azurerm_key_vault_secret" "sql_administrator_login" {
  name         = var.s_keyvault_admin_login
  value        = var.s_keyvault_admin_value
  key_vault_id = data.azurerm_key_vault.edwtrn2kv.id
}

# resource "random_password" "sql_administrator_login" {
#   length  = 16
#   special = false
# }

resource "azurerm_key_vault_secret" "sql_administrator_login_password" {
  name         = var.s_key_vault_secret_admin
  value        = var.s_key_vault_secret_admin_value
  key_vault_id = data.azurerm_key_vault.edwtrn2kv.id
}

resource "azurerm_synapse_workspace" "edwtrn2" {
  name                                 = var.synapse_name
  resource_group_name                  = var.s_ResourceGroupName
  location                             = var.s_location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.edwtrn2.id

  aad_admin = [
    {
      login = "DataEngineeringLeadership"
      #"AzureAD Admin"
      object_id = "9426f01d-a633-417e-871e-a65f3328890e"
      tenant_id = "51cc9ae7-a91f-4ef3-b3e0-9255fd97c8d8"
    }
  ]

  tags = {
    ApplicationName    = "${var.s_ApplicationName}"
    Cost_Center        = "${var.s_Cost_Center}"
    DataClass          = "${var.s_DataClass}"
    DR                 = "${var.s_DR}"
    Environment        = "${var.s_Environment}"
    Owner              = "${var.s_App_Owner}"
    ServiceClass       = "${var.s_ServiceClass}"
    AutomationSchedule = "${var.s_AutomationSchedule}"
    Project-Code       = "${var.s_Project-Code}"
    Impact-Rating      = "${var.s_Impact-Rating}"
    ServiceTicket      = "${var.s_ticket}"
  }
  identity {
    type = "SystemAssigned"
  }

  sql_administrator_login          = azurerm_key_vault_secret.sql_administrator_login.value
  sql_administrator_login_password = azurerm_key_vault_secret.sql_administrator_login_password.value
}

resource "azurerm_storage_data_lake_gen2_filesystem" "edwtrn2" {
  name               = var.s_storage_filesystem_name
  storage_account_id = data.azurerm_storage_account.edwtrn2.id
}

resource "azurerm_synapse_sql_pool" "edwtrn2" {
  name                 = var.s_synapse_sql_pool
  synapse_workspace_id = azurerm_synapse_workspace.edwtrn2.id
  sku_name             = "DW300c"
  create_mode          = "Default"
}

resource "azurerm_synapse_firewall_rule" "allow_azure_services" {
  name                 = "AllowAllWindowsAzureIps"
  synapse_workspace_id = azurerm_synapse_workspace.edwtrn2.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "0.0.0.0"
}