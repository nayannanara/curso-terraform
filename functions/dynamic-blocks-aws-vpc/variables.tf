variable "ports" {
    description = "portas abertas"
    type = map(object({
      description = string
      cidr_blocks = list(string)
    }))
    default = {
      22 = {
        description = "porta 22 para vpn"
        cidr_blocks = ["215.101.158/32"]
      }
      80 = {
        description = "porta 80 para internet"
        cidr_blocks = ["0.0.0.0/0"]
      }
      443 = {
        description = "porta 443 para internet"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }
}
