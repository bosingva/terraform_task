<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_new_ec2"></a> [new\_ec2](#module\_new\_ec2) | ./modules/ec2 | n/a |
| <a name="module_sg"></a> [sg](#module\_sg) | ./modules/sg | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP address with the instance | `bool` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the security group | `any` | n/a | yes |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | List of egress rules for the security group | `any` | n/a | yes |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | List of ingress rules for the security group | `any` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | n/a | `map(any)` | n/a | yes |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | The CIDR blocks of the private subnets | `list(any)` | <pre>[<br>  "10.0.11.0/24",<br>  "10.0.22.0/24",<br>  "10.0.33.0/24"<br>]</pre> | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | The CIDR blocks of the public subnets | `list(any)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | Region where do deploy infrastructure | `string` | `"eu-central-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default Tags for SG | `map(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block of the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->