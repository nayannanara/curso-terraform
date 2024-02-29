variable "location" {
  description = "região onde os recursos serão criados na Azure"
  type        = string
  default     = "France Central"
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
