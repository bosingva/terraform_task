variable "vpc_cidr" {
    type = string
}

variable "env" {
    type = string  
}

variable "public_subnet_cidrs" {
    type = list  
}

variable "private_subnet_cidrs" {
    type = list
}