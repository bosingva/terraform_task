variable "vpc_cidr" {
      type    = string
      default = "10.0.0.0/16"
}

variable "env" {
    type    = string  
    default = "dev"
}

variable "public_subnet_cidrs" {
    type    = list  
    default = [
        "10.0.1.0/24",
        "10.0.2.0/24"
    ]
}

variable "private_subnet_cidrs" {
    type    = list
    default = [
        "10.0.11.0/24",
        "10.0.22.0/24"
    ]
}