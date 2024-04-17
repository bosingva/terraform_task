# AWS EC2 Instance Module

## Description

This Terraform module provisions AWS EC2 instances with configurable tags, AMI, instance type, subnet, public IP association, and security group settings. It is designed to be flexible, allowing for the creation of instances tailored to different project requirements.

## Prerequisites

- Terraform v1.0.0 or newer
- AWS CLI configured with Administrator access
- An AWS account

## Module Variables

### Required Variables

- `ami`: The Amazon Machine Image (AMI) ID used for the instance. 
- `instance_type`: The type of instance (e.g., t2.micro, m5.large).
- `subnet_id`: The ID of the subnet in which the instance will be created.
- `vpc_security_group_ids`: A list of security group IDs to associate with the instance.

### Optional Variables

- `associate_public_ip_address`: Whether to associate a public IP address with the instance (default: `true`).
- `default_tags`: A map of default tags to apply to all resources. Default tags include:
  - `Environment`: The environment in which the instance is deployed (default: "Test").
  - `Owner`: The owner of the instance (default: "VERTEX").
  - `Project`: The project context for the instance (default: "Workload in Europe").

### Example of Variable Declaration

```hcl
default_tags = {
  Environment = "Production"
  Owner       = "YourName"
  Project     = "YourProject"
}

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.test](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | ID of AMI for the instance | `string` | `""` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP address with the instance | `bool` | `true` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default Tags for Auto Scaling Group | `map(string)` | <pre>{<br>  "Environment": "Test",<br>  "Owner": "VERTEX",<br>  "Project": "Workload in Europe"<br>}</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type (e.g., t2.micro, m5.large) | `string` | `""` | no |
| <a name="input_name_of_instance"></a> [name\_of\_instance](#input\_name\_of\_instance) | Name of the instance | `string` | `"My_instance"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID in which instance should be created | `string` | `""` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | List of security group IDs to associate with the instance | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ids"></a> [instance\_ids](#output\_instance\_ids) | IDs of the EC2 instances created by the module ec2 |
| <a name="output_instance_private_ips"></a> [instance\_private\_ips](#output\_instance\_private\_ips) | Private IP addresses of the EC2 instances created by the module |
| <a name="output_instance_public_ips"></a> [instance\_public\_ips](#output\_instance\_public\_ips) | Public IP addresses of the EC2 instances created by the module |
<!-- END_TF_DOCS -->