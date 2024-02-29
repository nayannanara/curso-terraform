variable "location" {
  description = "região onde os recursos serão criados na Azure"
  type        = map(string)
  default = {
    "europa" = "West Europe",
    "eua"    = "East Us",
    "asia"   = "Japan East"
    "brasil" = "Brazil South"
  }
}

variable "account_tier" {
  description = "tier da storage account na azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "tipo de replicação de dados da storage account"
  type        = string
  default     = "LRS"
}
