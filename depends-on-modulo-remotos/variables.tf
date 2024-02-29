variable "location" {
  description = "região onde os recursos serão criados na Azure"
  type        = string
  default     = "France Central"
}

variable "enviroment" {
  description = "ambiente"
  type        = string
  default     = "desenvolvimento"
}
