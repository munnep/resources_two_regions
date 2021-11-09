# How to create resources in two different regions

This repository shows you how to create two resources in different regions. 

This specific example does the following: 
- creates an EC2 instance named app_server1 in us-west-1 which is the default
- creates an EC2 instance named app_server2 in us-west-2 which is using an alias provider

# Prerequisites

## Install terraform  
See the following documentation [How to install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## AWS cli
Install AWS cli [See documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

# How to

1. Clone the repository to your local machine
```
git clone https://github.com/munnep/resources_two_regions.git
```
2. Change your directory
```
cd resources_two_regions
```
3. Terraform initialize
```
terraform init
```
4. Terraform plan
```
terraform plan
```
5. Terraform apply
```
terraform apply
```
6. Sample output
```
...
...
...
aws_instance.app_server1: Creation complete after 40s [id=i-09c72615490c330a0]
aws_instance.app_server2: Still creating... [40s elapsed]
aws_instance.app_server2: Still creating... [50s elapsed]
aws_instance.app_server2: Creation complete after 50s [id=i-0842f510d2b35087e]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
...
...
...
```
7. Destroy the resources
```
terraform destroy
```