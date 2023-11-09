# mssql data

variable "sql_server_name" {
  type        = string
  description = "The name of the sql server "
  default     = "gore-enterprisedata-trn2-sql"
}


variable "m_location" {
  type        = string
  description = "The location of the sql server "
  default     = "Canada East"
}


variable "m_ResourceGroupName" {
  type        = string
  description = "The name of the resource group the sql server server will be deployed "
  default     = "eda-enterprisedata-trn2"
}


variable "m_administrator_login" {
  type        = string
  description = "The login for the sql server "
  default     = "enterprisedata-trn2-sql-admin"
}

variable "m_vnet_rg" {
  type        = string
  description = "The login for the sql server "
  default     = "NetworkingResources"
}

variable "m_login_password" {
  type        = string
  description = "The password for the sql server "
  default     = "$Teniola@201766~"
}


variable "m_db_login_username" {
  type        = string
  description = "The login name for nthe sql server "
  default     = "Data Engineering-Contributor"
}

variable "m_vnet_name" {
  type        = string
  description = "The name of the vnet "
  default     = "Dev-CanadaEast-Vnet1"
}

variable "m_vnet_resourcegroup" {
  type        = string
  description = "The resource group of the vnet"
  default     = "NetworkingResources"
}

variable "m_subnet" {
  type        = string
  description = "The name of the subnet"
  default     = "enterprise-trn2-sql"
}


variable "m_subnet_resourcegroup" {
  type        = string
  description = "The resource group of the subnet"
  default     = "NetworkingResources"
}

variable "m_sql_network_rule" {
  type        = string
  description = "The name of the sql networkrule"
  default     = "sql-trn2-vnet-rule"
}

variable "m_ApplicationName" {
  description = "Subscription"
  default     = "Gore Enterprise Identity"
}

variable "m_App_Owner" {
  description = "Owner of the Application"
  default     = "CPE"
}

variable "m_Environment" {
  description = "Environment"
  default     = "All"
}

variable "m_Cost_Center" {
  description = "Cost Center"
  default     = "7950"
}

variable "m_Created_By" {
  description = "Tags to be created for resources"
  default     = "Cloud platform Team"
}

variable "m_Created_Date" {
  description = "Tags to be created for resources"
  default     = "26-07-2023"
}

variable "m_DR" {
  description = "Disaster Recovery"
  default     = "Infrastructure"
}

variable "m_Start-Stop" {
  description = "Start Stop Settings"
  default     = "No"
}

variable "m_DataClass" {
  description = "Data Class"
  default     = "Internal"
}

variable "m_Project-Code" {
  description = "Project Code"
  default     = "55556"
}

variable "m_Impact-Rating" {
  description = "Impact Rating"
  default     = "2"
}

variable "m_ServiceClass" {
  description = "Service Class"
  default     = "Silver"
}

variable "m_AutomationSchedule" {
  description = "AutomationSchedule"
  default     = "NA"
}

variable "m_ticket" {
  description = "To add Jiira/Snow ticket number"
  default     = "TRN2"
}

variable "m_sql_subnet" {
description = "subnet for the sql"
default =  "enterprise-trn2-sql-pe"
}


# synapse data

variable "s_ApplicationName" {
  description = "Subscription"
  default     = "Gore Enterprise Identity"
}

variable "s_App_Owner" {
  description = "Owner of the Application"
  default     = "CPE"
}

variable "s_Environment" {
  description = "Environment"
  default     = "All"
}

variable "s_Cost_Center" {
  description = "Cost Center"
  default     = "7950"
}

variable "s_Created_By" {
  description = "Tags to be created for resources"
  default     = "Cloud platform Team"
}

variable "s_Created_Date" {
  description = "Tags to be created for resources"
  default     = "27-07-2023"
}

variable "s_DR" {
  description = "Disaster Recovery"
  default     = "Infrastructure"
}

variable "s_Start-Stop" {
  description = "Start Stop Settings"
  default     = "No"
}

variable "s_DataClass" {
  description = "Data Class"
  default     = "Internal"
}

variable "s_Project-Code" {
  description = "Project Code"
  default     = "55556"
}

variable "s_Impact-Rating" {
  description = "Impact Rating"
  default     = "2"
}

variable "s_ServiceClass" {
  description = "Service Class"
  default     = "Silver"
}

variable "s_AutomationSchedule" {
  description = "AutomationSchedule"
  default     = "NA"
}

variable "s_ticket" {
  description = "To add Jiira/Snow ticket number"
  default     = "TRN2"
}

variable "s_ResourceGroupName" {
  type    = string
  default = "eda-enterprisedata-trn2"
}

variable "s_location" {
  type    = string
  default = "Canada East"
}

variable "synapse_name" {
  type    = string
  default = "enterprisedata-trn2-warehouse"
}

variable "s_keyvault_admin_login" {
  type    = string
  default = ""
}

variable "s_keyvault_admin_value" {
  type    = string
  default = ""
}

variable "s_key_vault_secret_admin" {
  type    = string
  default = ""
}

variable "s_key_vault_secret_admin_value" {
  type    = string
  default = ""
}

variable "s_synapse_sql_pool" {
  type    = string
  default = ""
}


variable "s_storage_filesystem_name" {
  type    = string
  default = "enterprisedata-trn2-filesystem"
}

variable "s_storageacc_name" {
  type    = string
  default = "goreenterprisedatatrn2"
}
