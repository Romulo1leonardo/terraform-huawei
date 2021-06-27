variable "vpc_name" {
  default = "terraform_vpc"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}
variable "subnet_name" {
  default = "terraform-subnet01"
}

variable "subnet_gateway_ip" {
  type = string
  default = "192.168.0.1"
}
variable "subnet_cidr" {
   type= string
   default = "192.168.0.0/24"
}
variable "portas_allow"{
    default = "22"
}

variable "portas_denny"{
  
 default = "80"
}