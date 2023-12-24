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
<img width="773" alt="Screenshot 2023-12-24 at 4 59 15 PM" src="https://github.com/sshiv5768/Multi-tenant-AWS-Infra/assets/40575397/796ce45a-5d4a-4a95-83ae-91de724e1583">

4: Check on your AWS Console to verify if resources are created or not.
<img width="1199" alt="Screenshot 2023-12-24 at 5 01 09 PM" src="https://github.com/sshiv5768/Multi-tenant-AWS-Infra/assets/40575397/f9b3a4de-a379-41e5-8414-3600f8868fee">
<img width="1017" alt="Screenshot 2023-12-24 at 5 00 26 PM" src="https://github.com/sshiv5768/Multi-tenant-AWS-Infra/assets/40575397/7c80acc0-974f-4512-8df7-abeac1d1f2bf">

