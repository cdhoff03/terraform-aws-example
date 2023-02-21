# Terraform AWS Example
This repository contains Terraform code that creates the following resources inside of AWS

- `2 t2.micro EC2 instances acting as Web Servers running Amazon Linux 2`
- `Application Load Balancer with 2 EC2 instances attached to it`
- `Security Group which allows port 80 ingress and all egress traffic`

Note: This example assumes you have a default VPC for your AWS account. If you don't have it, you can use the following command to create it.
```
aws ec2 create-default-vpc
```

This also assumes you have the AWS CLI preconfigured and uses the "default" profile to authenticate

While this repository doesn't exactly serve a practical purpose, it can be used by those who want to learn, such as myself