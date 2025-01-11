provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
module "ec2" {
  source       = "./modules/ec2"
  instance_type = var.instance_type
  ami_id        = var.ami_id
}

# S3 Bucket for Reports
module "s3" {
  source         = "./modules/s3"
#  bucket_name    = var.s3_bucket_name
#  versioning     = true
}

# AWS Budgets
module "budgets" {
  source           = "./modules/budgets"
  budget_name      = var.budget_name
  budget_limit     = var.budget_limit
  notification_email = var.notification_email
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}
