public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]
private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.22.0/24",
  "10.0.33.0/24"
]

description = "For testing"
ingress_rules = [
  {
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80,
    to_port     = 80,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 443,
    to_port     = 443,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    from_port   = 0,
    to_port     = 0,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"]
  }
]

associate_public_ip_address = true

# instances = [
#   "instance1" = {
#     instance_type = "t2.micro"
#     ami           = "ami-026c3177c9bd54288"
#   }
#   "instance2" = {
#     instance_type = "t2.medium"
#     ami           = "ami-07ff8415655af0553"
#   }
#   "instance3" = {
#     instance_type = "t2.micro"
#     ami           = "ami-07ff8415655af0553"
#     tags = {
#       instance = "3"
#     }
#   }
# ]



instances = {
    "instance1" = {
      instance      = "instance1"
      instance_type = "t2.micro"
      ami           = "ami-026c3177c9bd54288"
    },
    "instance2" = {
      instance      = "instance2"  
      instance_type = "t2.micro"
      ami           = "ami-07ff8415655af0553"
    },
    "instance2" = {
      instance      = "instance3"
      instance_type = "t2.micro"
      ami           = "ami-07ff8415655af0553"
    }
  }

  tags = {
    Environment = "Test"
    Owner       = "VERTEX"
    Project     = "Workload in Europe"
  }

