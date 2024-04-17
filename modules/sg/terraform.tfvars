# default_tags = {
#   Environment = "Test",
#   Owner       = "VERTEX",
#   Project     = "Workload in Europe"
# }

# name_of_sg = "Reusable"
# description = "For testing"
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