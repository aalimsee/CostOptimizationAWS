resource "aws_s3_bucket" "reports" {
  bucket = var.bucket_name
  versioning {
    enabled = var.versioning
  }

  tags = {
    Name = "CostOptimizationReports"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.reports.bucket
}

module "s3" {
  source     = "./modules/s3"
  bucket_name = var.bucket_name  # Pass the bucket_name variable here
  versioning  = true  # Or pass the appropriate value for versioning
}
