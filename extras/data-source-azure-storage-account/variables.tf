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

variable "resource_group_name" {
  description = "nome para o resource group na azure"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "nome da storage account na azure"
  type        = string
  default     = "naycursoterraform"
}

variable "container_name" {
  description = "nome do container na azure"
  type        = string
  default     = "container-terraform"
}
