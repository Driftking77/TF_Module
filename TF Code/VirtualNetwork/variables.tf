variable "vnets" {
    type = map(object({
      name =string
      location = string
      resource_group_name = string
      address_space =string

    }))
}
variable "subnets" {
    default = null
    type = map(object({
      name =string
      address_prefix = string
      address_space = optional(string) 
    }))
}

