variable "location"{
  type = string
}


variable "resource_group_name"{
  type = string
}

variable "name" {
  type = string
}

variable "size" {
  type = string
}

variable "minimum_instance_count" {
  type = number
  default = 1
}

variable "maximum_instance_count" {
  type = number
  default = 1
}

variable "tier" {
  type = string
  
}

# variable "family" {
#   type = string
#   default = "Pv2"
  
# }

