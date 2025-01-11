provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = "t2.micro"
}

module "s3" {
  source = "./modules/s3"
  bucket_name = "cost-reports-bucket"
  versioning = true
}

module "budgets" {
  source = "./modules/budgets"
  budget_name = "monthly-budget"
  budget_limit = 100
  notification_email = "aaron.limse@hotmail.com"
}
