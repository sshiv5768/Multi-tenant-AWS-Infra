## Multi-AZ Infrastructure provision using Terraform

This project contains: 
- EC2
- S3 Bucket
- Security Group

### Goal
This project aims to deploy all the above resources to multiple availability zones using Terraform.

### Project Structure 
It contains an AWS module named ``aws_infra`` which contains resource definition files. The root terraform module contains the main.tf file which calls the AWS provider to provision the resources.

### How to run the project?
To run this project you will need the following:
- terraform
- aws cli

1: Initialise the terraform project.
```
terraform init
```
2: Validate your terraform code.
```
terraform validate
```
3: Final steps plan and apply your terraform code to provision resources.
```
terraform plan
terraform apply
```

